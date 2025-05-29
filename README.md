# Borescope pi-gen
Pi-gen is a tool used to create Raspberry Pi OS images. This repository contains a custom and optimized image for the Borescope project.
## Our configuration

| Setting | Value |
| ------- | ----- |
| **IMG_NAME** |  Raspbian-Borescope |
| **DEBIAN VERSION** | Debian Bookworm |
| **KEYBOARD LAYOUT** | Español (latinoamericano) |
| **TIMEZONE** | América, Argentina, Buenos Aires. |
| **LOCALE** | es_AR.UTF-8 |
| **User** | borescope / borescope |

### Internal documentation
[About pi-gen](./README_PI_GEN.md)

[About customization](./README_CUSTOMIZATION.md)

## The last release available
You can download the lastest build image from:
[2025-05-14 - Raspbian-Borescope-img](https://drive.google.com/file/d/1vMCnVDvt-AWYYgLDjjlsbWwxDNs12k-S/view)
* **Raspberry Pi support:** 4 Series or better.
## Build from source

### Dependencies
Pi-gen runs on Debian-based operating systems. To install the required dependencies you should run:

```
$ apt-get install coreutils quilt parted qemu-user-static debootstrap zerofree zip \
dosfstools libarchive-tools libcap2-bin grep rsync xz-utils file git curl bc \
gpg pigz xxd arch-test

```

### How to build
To build the image run:

```
$ ./build.sh -c borescope_config
```
>[!WARNING]
> You must run the script build.sh with high privileges, usually with sudo or doas.
>
> Construction can take a long time.

The final image will be located at:

work/Raspbian-Borescope/export-image/YYYY-MM-DD-Raspbian-Borescope.img

## Latest changes
- (2025 - 05 - 28) Added Borescope Splash background.
* (2025 - 05 - 28) Add borescopeTheme for plymouth.
## Sponsor

<table>
  <tr>
    <td>
      <a href="https://ciii.frc.utn.edu.ar/wiki/">
        <img src="https://avatars.githubusercontent.com/u/33964965?v=4" alt="CIII UTN-FRC" height="50px"/>
      </a>
    </td>
    <td>
      <strong>Centro de Investigación en Informática para la Ingeniería (CIII)</strong>
    </td>
  </tr>
</table>
