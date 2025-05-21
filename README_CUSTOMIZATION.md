# Modificaciones hechas en pi-gen
* **stage1**
  
  1 - Agregado de "disable_splash=1" en stage1/00-boot-files/files/config.txt

* **stage3**
  
  1 - Quitado de "evince, chromium, rpi-chromium-mods, libidevinecdm0, gldriver-test, obconf" en stage3/00-install-packages/00-packages
  
  2 - Quitado de "mousepad, eom, gnome-themes-extra-data" en stage3/00-install-packages/00-packages-nr

* **stage4**

  1 - Quitado de "python3-pygame, python3-tk, thonny, python3-pgzero, python3-serial, debian-reference-en, dillo, python3-numpy, alacarte, rc-gui, sense-hat, tree, libgl1-mesa-dri, libgles1, libgles2-mesa, xcompmgr, geany, python3-twython, python3-flask, ffmpeg, vlc, rpi-imager, labwc, squeekboard" en stage4/00-install-packages/00-packages

  2 - Quitado de "realvnc-vnc-server" en stage4/00-install-packages/00-packages-nr

  3 - Quitado de 02-packages de stage4/00-install-packages/

  4 - Quitado de 00-run.sh de stage4/02-extras/

  5 - Quitado de 00-run.sh de stage4/03-bookshelf/

  6 - Quitado de .gitignore de stage4/03-bookshelf/

  7 - Quitado de 04-enable-xcompmgr de stage4/

  8 - Quitado de 05-print-support de stage4/

  9 - Quitado de 06-enable-wayland de stage4/
  
