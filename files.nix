{
  config,
  pkgs,
  ...
}:
let
  legacySources = import ./legacy.nix { inherit pkgs; };

  # If 'name' is omitted, the filename from the URL is used
  currentSources = {
    bdb-4_8_30 = {
      src = pkgs.fetchurl {
        url = "https://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz";
        sha256 = "12edc0df75bf9abd7f82f821795bcee50f42cb2e5f76a6a281b85732798364ef";
      };
      name = "db-4.8.30.NC.tar.gz";
    };

    boost-1_88_0 = {
      src = pkgs.fetchurl {
        url = "https://github.com/boostorg/boost/releases/download/boost-1.88.0/boost-1.88.0-cmake.tar.gz";
        sha256 = "dcea50f40ba1ecfc448fdf886c0165cf3e525fef2c9e3e080b9804e8117b9694";
      };
    };

    expat-2_7_3 = {
      src = pkgs.fetchurl {
        url = "https://github.com/libexpat/libexpat/releases/download/R_2_7_3/expat-2.7.3.tar.gz";
        sha256 = "821ac9710d2c073eaf13e1b1895a9c9aa66c1157a99635c639fbff65cdbdd732";
      };
    };

    fontconfig = {
      src = pkgs.fetchurl {
        url = "https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.12.6.tar.gz";
        sha256 = "064b9ebf060c9e77011733ac9dc0e2ce92870b574cca2405e11f5353a683c334";
      };
    };

    freetype = {
      src = pkgs.fetchurl {
        url = "https://download.savannah.gnu.org/releases/freetype/freetype-2.11.0.tar.xz";
        sha256 = "8bee39bd3968c4804b70614a0a3ad597299ad0e824bc8aad5ce8aaf48067bde7";
      };
    };

    libevent = {
      src = pkgs.fetchurl {
        url = "https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz";
        sha256 = "92e6de1be9ec176428fd2367677e61ceffc2ee1cb119035037a27d346b0403bb";
      };
    };

    libXau-1_0_12 = {
      src = pkgs.fetchurl {
        url = "https://xorg.freedesktop.org/releases/individual/lib/libXau-1.0.12.tar.gz";
        sha256 = "2402dd938da4d0a332349ab3d3586606175e19cb32cb9fe013c19f1dc922dcee";
      };
    };

    libxcb-1_17_0 = {
      src = pkgs.fetchurl {
        url = "https://xcb.freedesktop.org/dist/libxcb-1.17.0.tar.gz";
        sha256 = "2c69287424c9e2128cb47ffe92171e10417041ec2963bceafb65cb3fcf8f0b85";
      };
    };

    libxcb-util-0_4_1 = {
      src = pkgs.fetchurl {
        url = "https://xcb.freedesktop.org/dist/xcb-util-0.4.1.tar.gz";
        sha256 = "21c6e720162858f15fe686cef833cf96a3e2a79875f84007d76f6d00417f593a";
      };
    };

    libxcb-util-cursor-0_1_6 = {
      src = pkgs.fetchurl {
        url = "https://xcb.freedesktop.org/dist/xcb-util-cursor-0.1.6.tar.gz";
        sha256 = "eae38b2dfc5c529a886e507ef576b12d2a20aa1f149608e4853af760f31be60b";
      };
    };

    libxcb-util-image-0_4_1 = {
      src = pkgs.fetchurl {
        url = "https://xcb.freedesktop.org/dist/xcb-util-image-0.4.1.tar.gz";
        sha256 = "0ebd4cf809043fdeb4f980d58cdcf2b527035018924f8c14da76d1c81001293b";
      };
    };

    libxcb-util-keysyms-0_4_1 = {
      src = pkgs.fetchurl {
        url = "https://xcb.freedesktop.org/dist/xcb-util-keysyms-0.4.1.tar.gz";
        sha256 = "1fa21c0cea3060caee7612b6577c1730da470b88cbdf846fa4e3e0ff78948e54";
      };
    };

    libxcb-util-render-0_3_10 = {
      src = pkgs.fetchurl {
        url = "https://xcb.freedesktop.org/dist/xcb-util-renderutil-0.3.10.tar.gz";
        sha256 = "e04143c48e1644c5e074243fa293d88f99005b3c50d1d54358954404e635128a";
      };
    };

    libxcb-util-wm-0_4_2 = {
      src = pkgs.fetchurl {
        url = "https://xcb.freedesktop.org/dist/xcb-util-wm-0.4.2.tar.gz";
        sha256 = "dcecaaa535802fd57c84cceeff50c64efe7f2326bf752e16d2b77945649c8cd7";
      };
    };

    libxkbcommon = {
      src = pkgs.fetchurl {
        url = "https://xkbcommon.org/download/libxkbcommon-0.8.4.tar.xz";
        sha256 = "60ddcff932b7fd352752d51a5c4f04f3d0403230a584df9a2e0d5ed87c486c8b";
      };
    };

    libmultiprocess-1954f7f = {
      src = pkgs.fetchurl {
        url = "https://github.com/bitcoin-core/libmultiprocess/archive/1954f7f65661d49e700c344eae0fc8092decf975.tar.gz";
        sha256 = "fc014bd74727c1d5d30b396813685012c965d079244dd07b53bc1c75c610a2cb";
      };
      name = "1954f7f65661d49e700c344eae0fc8092decf975.tar.gz";
    };

    # Capnproto: serve with both original name (c++) and renamed (cxx)
    native-capnp = {
      src = pkgs.fetchurl {
        url = "https://capnproto.org/capnproto-c++-1.2.0.tar.gz";
        sha256 = "ed00e44ecbbda5186bc78a41ba64a8dc4a861b5f8d4e822959b0144ae6fd42ef";
      };
      name = "capnproto-cxx-1.2.0.tar.gz";
    };

    native-capnp-original = {
      src = pkgs.fetchurl {
        url = "https://capnproto.org/capnproto-c++-1.2.0.tar.gz";
        sha256 = "ed00e44ecbbda5186bc78a41ba64a8dc4a861b5f8d4e822959b0144ae6fd42ef";
      };
      # Keep original filename for backports branch compatibility
    };

    qrencode = {
      src = pkgs.fetchurl {
        url = "https://fukuchi.org/works/qrencode/qrencode-4.1.1.tar.gz";
        sha256 = "da448ed4f52aba6bcb0cd48cac0dd51b8692bccc4cd127431402fca6f8171e8e";
      };
    };

    qt-qtbase = {
      src = pkgs.fetchurl {
        url = "https://download.qt.io/archive/qt/6.7/6.7.3/submodules/qtbase-everywhere-src-6.7.3.tar.xz";
        sha256 = "8ccbb9ab055205ac76632c9eeddd1ed6fc66936fc56afc2ed0fd5d9e23da3097";
      };
    };

    qt-qttranslations = {
      src = pkgs.fetchurl {
        url = "https://download.qt.io/archive/qt/6.7/6.7.3/submodules/qttranslations-everywhere-src-6.7.3.tar.xz";
        sha256 = "dcc762acac043b9bb5e4d369b6d6f53e0ecfcf76a408fe0db5f7ef071c9d6dc8";
      };
    };

    qt-qttools = {
      src = pkgs.fetchurl {
        url = "https://download.qt.io/archive/qt/6.7/6.7.3/submodules/qttools-everywhere-src-6.7.3.tar.xz";
        sha256 = "f03bb7df619cd9ac9dba110e30b7bcab5dd88eb8bdc9cc752563b4367233203f";
      };
    };

    qt-cmakelists = {
      src = pkgs.fetchurl {
        url = "https://raw.githubusercontent.com/qt/qt5/refs/heads/6.7.3/CMakeLists.txt";
        sha256 = "9fb720a633c0c0a21c31fe62a34bf617726fed72480d4064f29ca5d6973d513f";
      };
      name = "CMakeLists.txt-6.7.3";
    };

    qt-ecmoptional = {
      src = pkgs.fetchurl {
        url = "https://raw.githubusercontent.com/qt/qt5/refs/heads/6.7.3/cmake/ECMOptionalAddSubdirectory.cmake";
        sha256 = "97ee8bbfcb0a4bdcc6c1af77e467a1da0c5b386c42be2aa97d840247af5f6f70";
      };
      name = "ECMOptionalAddSubdirectory.cmake-6.7.3";
    };

    qt-toplevelhelpers = {
      src = pkgs.fetchurl {
        url = "https://raw.githubusercontent.com/qt/qt5/refs/heads/6.7.3/cmake/QtTopLevelHelpers.cmake";
        sha256 = "5ac2a7159ee27b5b86d26ecff44922e7b8f319aa847b7b5766dc17932fd4a294";
      };
      name = "QtTopLevelHelpers.cmake-6.7.3";
    };

    sqlite-3500400 = {
      src = pkgs.fetchurl {
        url = "https://sqlite.org/2025/sqlite-autoconf-3500400.tar.gz";
        sha256 = "a3db587a1b92ee5ddac2f66b3edb41b26f9c867275782d46c3a088977d6a5b18";
      };
    };

    systemtap-5_3 = {
      src = pkgs.fetchurl {
        url = "https://sourceware.org/ftp/systemtap/releases/systemtap-5.3.tar.gz";
        sha256 = "966a360fb73a4b65a8d0b51b389577b3c4f92a327e84aae58682103e8c65a69a";
      };
    };

    xcb-proto-1_17_0 = {
      src = pkgs.fetchurl {
        url = "https://xorg.freedesktop.org/archive/individual/proto/xcb-proto-1.17.0.tar.gz";
        sha256 = "392d3c9690f8c8202a68fdb89c16fd55159ab8d65000a6da213f4a1576e97a16";
      };
    };

    xproto = {
      src = pkgs.fetchurl {
        url = "https://xorg.freedesktop.org/releases/individual/proto/xproto-7.0.31.tar.gz";
        sha256 = "6d755eaae27b45c5cc75529a12855fed5de5969b367ed05003944cf901ed43c7";
      };
    };

    zeromq = {
      src = pkgs.fetchurl {
        url = "https://github.com/zeromq/libzmq/releases/download/v4.3.5/zeromq-4.3.5.tar.gz";
        sha256 = "6653ef5910f17954861fe72332e68b03ca6e4d9c7160eb3a8de5a5a913bfab43";
      };
    };
  };

  sources = currentSources // legacySources;
in
{
  # Symlink each file individually from nix store to Caddy's serving directory
  # This way each file is its own derivation and only changed files need rebuilding
  system.activationScripts.copyDependsFiles = ''
    # Clean and recreate the directory to avoid stale symlinks
    rm -rf ${config.services.caddy.dataDir}/www/depends
    mkdir -p ${config.services.caddy.dataDir}/www/depends

    # Symlink each file individually with its clean name
    ${pkgs.lib.concatStringsSep "\n" (
      pkgs.lib.mapAttrsToList (
        key: value:
        let
          # Use custom name if provided, otherwise extract from URL
          cleanName = if value ? name then value.name else builtins.baseNameOf value.src.url;
        in
        ''
          ln -sf ${value.src} ${config.services.caddy.dataDir}/www/depends/${cleanName}
        ''
      ) sources
    )}

    chown -R caddy:caddy ${config.services.caddy.dataDir}/www/depends
  '';
}
