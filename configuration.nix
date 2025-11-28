{
  config,
  pkgs,
  ...
}:
{
  imports = [
    ./caddy.nix
    ./files.nix
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.efiInstallAsRemovable = true;

  networking.hostName = "depends-server";
  networking.firewall.allowedTCPPorts = [
    80
    443
  ];
  networking.firewall.allowedUDPPorts = [ 443 ]; # QUIC

  services.openssh.enable = true;
  services.openssh.settings.PermitRootLogin = "prohibit-password";

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH988C5DbEPHfoCphoW23MWq9M6fmA4UTXREiZU0J7n0 will.hetzner@temp.com"
  ];

  sops.defaultSopsFile = ./secrets.yaml;
  sops.age.keyFile = "/var/lib/sops-nix/key.txt";

  environment.systemPackages = with pkgs; [
    vim
    git
    htop
    curl
  ];

  time.timeZone = "UTC";
  system.stateVersion = "25.05";
}
