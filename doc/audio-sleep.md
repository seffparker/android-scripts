# audio-sleep
Stop media playback and turn off connections after specified minutes.

 - Uses native Andorid media event control broadcast. Compatible with all media players
 - Monitor and control via Notification bar
 - Optionally turn off Wifi, Data, Bluetooth after playback
 - Smooth volume fade-out

## Usage
```
USAGE: audio-sleep ARG1 [ARG2]

ARG1:
        <minutes-to-sleep>
        +<minutes-to-extend>
        <zero-to-abort>

ARG2:
        w - Keep wifi state
        d - Keep data state
        b - Keep bluetooth state
```
See [audio-sleep.conf](/sdcard/lab/android/etc/audio-sleep.conf) for additional configuration.
## Examples
Sleep after 30 minutes:
```
# audio-sleep 30
```
Sleep after 50 minutes, and do not turn off wifi, data for this session:
```
# audio-sleep 50 wd
Setting sleep timer to 50 minutes  [ DONE ]
```
Extend 10 more minutes, keep previous session preference:
```
# audio-sleep +10
Setting sleep timer to 60 minutes  [ DONE ]
```
Abort audio-sleep (and session):
```
# audio-sleep 0
Aborting audio-sleep  [ DONE ]
```
## Preview
![audio-sleep](/doc/images/audio-sleep.gif)
