{ config, pkgs, ... }:

{
  sops.secrets."cloudflare-api-token" = {
    owner = "caddy";
    group = "caddy";
    mode = "0400";
  };

  sops.templates."caddy-env".content = ''
    CLOUDFLARE_API_TOKEN=${config.sops.placeholder."cloudflare-api-token"}
  '';
  sops.templates."caddy-env".owner = "caddy";
  sops.templates."caddy-env".group = "caddy";

  services.caddy = {
    enable = true;
    package = pkgs.caddy.withPlugins {
      plugins = [ "github.com/caddy-dns/cloudflare@v0.2.2" ];
      hash = "sha256-ea8PC/+SlPRdEVVF/I3c1CBprlVp1nrumKM5cMwJJ3U=";
    };

    globalConfig = ''
      acme_dns cloudflare {env.CLOUDFLARE_API_TOKEN}
    '';

    virtualHosts."depends.fish.foo" = {
      extraConfig = ''
        root * ${config.services.caddy.dataDir}/www/depends

        # Handle Qt CMake files with version query parameters
        # Rewrite CMakeLists.txt?h=VERSION to CMakeLists.txt-VERSION
        @cmake_files {
          path *.txt *.cmake
          query h=*
        }
        rewrite @cmake_files {path}-{query.h}

        file_server browse

        tls {
          dns cloudflare {env.CLOUDFLARE_API_TOKEN}
        }
      '';
    };
  };

  systemd.services.caddy.serviceConfig.EnvironmentFile = config.sops.templates."caddy-env".path;

  # Ensure the www directory exists
  systemd.tmpfiles.rules = [
    "d ${config.services.caddy.dataDir}/www 0755 caddy caddy -"
    "d ${config.services.caddy.dataDir}/www/depends 0755 caddy caddy -"
  ];
}
