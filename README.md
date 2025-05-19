# Borescope pi-gen
Pi-gen is a tool used to create Raspberry Pi OS images. This repository contains our custom and optimized image to the Borescope project.
## Our configuration

* **IMG_NAME**: Raspbian-Borescope
* **DEBIAN VERSION**: Debian Bookworm
* **USER NAME**: borescope
* **USER PASSWORD**: borescope
* **KEYBOARD LAYOUT**: Español (latinoamericano)
* **TIMEZONE**: América, Argentina, Buenos Aires.
* **LOCALE**: es_AR.UTF-8

### Internal documentation
[About pi-gen](./README_PI_GEN.md)

[About customization](./README_CUSTOMIZATION.md)

## The last release available
You can download the last image builded in:
[2025-05-14 - Raspbian-Borescope-img](https://drive.google.com/file/d/1vMCnVDvt-AWYYgLDjjlsbWwxDNs12k-S/view)

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

The image is in work/Raspbian-Borescope/export-image/XXXX-XX-XX-Raspbian-Borescope.img

> [!WARNING]
> Construction can take a long time.

## Latest changes

## Sponsor
Centro de investigación en Informática para la ingeniería [CIII](https://ciii.frc.utn.edu.ar)
