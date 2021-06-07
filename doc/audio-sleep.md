# audio-sleep
Stop media playback and turn-off Bluetooth after specified minutes.

## Usage:
```
audio-sleep <minutes-to-sleep>
audio-sleep +<minutes-to-sleep>
audio-sleep 0 <zero-to-abort>
```
## Examples
```
# audio-sleep 50
Setting sleep timer to 50 minutes  [ DONE ]

# audio-sleep +10
Setting sleep timer to 60 minutes  [ DONE ]

# audio-sleep 0
Aborting audio-sleep  [ DONE ]

# audio-sleep 0
Aborting audio-sleep  [ SKIP ]
```
## Preview
![audio-sleep](/doc/images/audio-sleep.gif)
