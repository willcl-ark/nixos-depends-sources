{ pkgs, ... }:
{
  boost-1_81_0 = {
    src = pkgs.fetchurl {
      url = "https://archives.boost.io/release/1.81.0/source/boost_1_81_0.tar.gz";
      sha256 = "205666dea9f6a7cfed87c7a6dfbeb52a2c1b9de55712c9c1a87735d7181452b6";
    };
    name = "boost_1_81_0.tar.gz";
  };

  expat-2_4_8 = {
    src = pkgs.fetchurl {
      url = "https://github.com/libexpat/libexpat/releases/download/R_2_4_8/expat-2.4.8.tar.xz";
      sha256 = "f79b8f904b749e3e0d20afeadecf8249c55b2e32d4ebb089ae378df479dcaf25";
    };
    name = "expat-2.4.8.tar.xz";
  };

  libmultiprocess-6aca5f3 = {
    src = pkgs.fetchurl {
      url = "https://github.com/bitcoin-core/libmultiprocess/archive/6aca5f389bacf2942394b8738bbe15d6c9edfb9b.tar.gz";
      sha256 = "2efeed53542bc1d8af3291f2b6f0e5d430d86a5e04e415ce33c136f2c226a51d";
    };
    name = "6aca5f389bacf2942394b8738bbe15d6c9edfb9b.tar.gz";
  };

  libXau-1_0_9 = {
    src = pkgs.fetchurl {
      url = "https://xorg.freedesktop.org/releases/individual/lib/libXau-1.0.9.tar.gz";
      sha256 = "1f123d8304b082ad63a9e89376400a3b1d4c29e67e3ea07b3f659cccca690eea";
    };
    name = "libXau-1.0.9.tar.gz";
  };

  libxcb-1_14 = {
    src = pkgs.fetchurl {
      url = "https://xcb.freedesktop.org/dist/libxcb-1.14.tar.xz";
      sha256 = "a55ed6db98d43469801262d81dc2572ed124edc3db31059d4e9916eb9f844c34";
    };
    name = "libxcb-1.14.tar.xz";
  };

  libxcb-util-0_4_0 = {
    src = pkgs.fetchurl {
      url = "https://xcb.freedesktop.org/dist/xcb-util-0.4.0.tar.gz";
      sha256 = "0ed0934e2ef4ddff53fcc70fc64fb16fe766cd41ee00330312e20a985fd927a7";
    };
    name = "xcb-util-0.4.0.tar.gz";
  };

  libxcb-util-cursor-0_1_5 = {
    src = pkgs.fetchurl {
      url = "https://xcb.freedesktop.org/dist/xcb-util-cursor-0.1.5.tar.gz";
      sha256 = "0e9c5446dc6f3beb8af6ebfcc9e27bcc6da6fe2860f7fc07b99144dfa568e93b";
    };
    name = "xcb-util-cursor-0.1.5.tar.gz";
  };

  libxcb-util-image-0_4_0 = {
    src = pkgs.fetchurl {
      url = "https://xcb.freedesktop.org/dist/xcb-util-image-0.4.0.tar.gz";
      sha256 = "cb2c86190cf6216260b7357a57d9100811bb6f78c24576a3a5bfef6ad3740a42";
    };
    name = "xcb-util-image-0.4.0.tar.gz";
  };

  libxcb-util-keysyms-0_4_0 = {
    src = pkgs.fetchurl {
      url = "https://xcb.freedesktop.org/dist/xcb-util-keysyms-0.4.0.tar.gz";
      sha256 = "0807cf078fbe38489a41d755095c58239e1b67299f14460dec2ec811e96caa96";
    };
    name = "xcb-util-keysyms-0.4.0.tar.gz";
  };

  libxcb-util-render-0_3_9 = {
    src = pkgs.fetchurl {
      url = "https://xcb.freedesktop.org/dist/xcb-util-renderutil-0.3.9.tar.gz";
      sha256 = "55eee797e3214fe39d0f3f4d9448cc53cffe06706d108824ea37bb79fcedcad5";
    };
    name = "xcb-util-renderutil-0.3.9.tar.gz";
  };

  libxcb-util-wm-0_4_1 = {
    src = pkgs.fetchurl {
      url = "https://xcb.freedesktop.org/dist/xcb-util-wm-0.4.1.tar.gz";
      sha256 = "038b39c4bdc04a792d62d163ba7908f4bb3373057208c07110be73c1b04b8334";
    };
    name = "xcb-util-wm-0.4.1.tar.gz";
  };

  # Qt 5.15.16 (for 29.x branch)
  qt-5_15_16-qtbase = {
    src = pkgs.fetchurl {
      url = "https://download.qt.io/archive/qt/5.15/5.15.16/submodules/qtbase-everywhere-opensource-src-5.15.16.tar.xz";
      sha256 = "b04815058c18058b6ba837206756a2c87d1391f07a0dcb0dd314f970fd041592";
    };
    name = "qtbase-everywhere-opensource-src-5.15.16.tar.xz";
  };

  qt-5_15_16-qttranslations = {
    src = pkgs.fetchurl {
      url = "https://download.qt.io/archive/qt/5.15/5.15.16/submodules/qttranslations-everywhere-opensource-src-5.15.16.tar.xz";
      sha256 = "415dbbb82a75dfc9a7be969e743bee54c0e6867be37bce4cf8f03da39f20112a";
    };
    name = "qttranslations-everywhere-opensource-src-5.15.16.tar.xz";
  };

  qt-5_15_16-qttools = {
    src = pkgs.fetchurl {
      url = "https://download.qt.io/archive/qt/5.15/5.15.16/submodules/qttools-everywhere-opensource-src-5.15.16.tar.xz";
      sha256 = "1cab11887faca54af59f4995ee435c9ad98d194e9e6889c846692c8b6815fc1c";
    };
    name = "qttools-everywhere-opensource-src-5.15.16.tar.xz";
  };

  sqlite-3460100 = {
    src = pkgs.fetchurl {
      url = "https://sqlite.org/2024/sqlite-autoconf-3460100.tar.gz";
      sha256 = "67d3fe6d268e6eaddcae3727fce58fcc8e9c53869bdd07a0c61e38ddf2965071";
    };
    name = "sqlite-autoconf-3460100.tar.gz";
  };

  systemtap-4_8 = {
    src = pkgs.fetchurl {
      url = "https://sourceware.org/ftp/systemtap/releases/systemtap-4.8.tar.gz";
      sha256 = "cbd50a4eba5b261394dc454c12448ddec73e55e6742fda7f508f9fbc1331c223";
    };
    name = "systemtap-4.8.tar.gz";
  };

  xcb-proto-1_15_2 = {
    src = pkgs.fetchurl {
      url = "https://xorg.freedesktop.org/archive/individual/proto/xcb-proto-1.15.2.tar.xz";
      sha256 = "7072beb1f680a2fe3f9e535b797c146d22528990c72f63ddb49d2f350a3653ed";
    };
    name = "xcb-proto-1.15.2.tar.xz";
  };
}
