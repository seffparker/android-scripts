# android-scripts aka batmobile-mods
Handy Android scripts for minor automation and improved productivity.

## Current Environment
- **Architecture:** aarch64/arm64
- **Device:** Xiaomi POCO F1
- **OS:** Android 9 / MIUI 11
- **Terminal:** Termux, Termux:API
- **Shell:** [BASH 5](https://github.com/Zackptg5/Cross-Compiled-Binaries-Android/blob/master/bash/bash-arm64) (compiled by Zackptg5)
- **Busybox:** [busybox-ndk](https://github.com/Magisk-Modules-Repo/busybox-ndk) (compiled by osm0sis)
- **Root:** Magisk 22 (with SEPolicy inject)
- **Features:** System-less, SELinux Support

## Deployment
1. Clone the repository
1. Switch as root user
1. `cd` into the repo root dir
1. Run `sh deploy-stack.sh`
1. Reboot, or Restart Termux and run `post-boot`

## Spotlights
1. [Basic Charging Control](https://github.com/seffparker/android-scripts/blob/master/doc/basic-charging-control.md)
1. [Status Widget](https://github.com/seffparker/android-scripts/blob/master/doc/status-widget.md)
1. [Audio Sleep](https://github.com/seffparker/android-scripts/blob/master/doc/audio-sleep.md)
1. [Ad block](https://github.com/seffparker/android-scripts/blob/master/doc/adblock.md)

## Uninstallation
1. Remove the Magisk module `batmobile-mods` via Magisk Manager app
1. Delete the directories `/data/bin`, `/data/xbin`, `/data/root`, `/sdcard/lab/andorid`
1. Delete the `.bashrc` symlink and restore the `.bashrc.termux` in Termux home directory
1. Reboot the device

## Disclaimer
These scripts are wrote to make my personal Android experience easier and productive.
Not all scripts may be useful to you. I'm not responsible for anything happens to your device or data after using these scripts.
