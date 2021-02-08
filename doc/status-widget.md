# status-widget
Push plain text from shell to a home screen widget

## Dependencies
1. Nginx (for local HTML webserver)
1. inotify-tools (for watching content updates)
1. [Meta Widget](https://play.google.com/store/apps/details?id=fahrbot.apps.metawidget) (for displaying HTML in homescreen)

## Usage
```
# status-widget
Usage: start | status | restart | stop
```
## Debug Outputs
```
# status-widget run

[2021-02-08 14:39:13 IST] - Starting local NGINX server
[2021-02-08 14:39:13 IST] - Updating widgets
[2021-02-08 14:39:14 IST] - Setting up watches.
[2021-02-08 14:39:14 IST] - Watches established.
[2021-02-08 14:39:28 IST] - /sdcard/lab/android/var/status-widget/bucket/ MODIFY monitor
[2021-02-08 14:39:28 IST] - Updating widgets
[2021-02-08 14:39:29 IST] - Setting up watches.
[2021-02-08 14:39:29 IST] - Watches established.
```
## Preview
![status-widget](/doc/images/status-widget.png)
