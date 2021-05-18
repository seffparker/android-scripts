# basic-charging-control
Limit charging current and level to increase the efficiency and lifespan of battery.

The charging current will be dynamically adjusted according battery temperature. Charging will be paused at the specified temperature and will be resumed only when the battery is cooled to the given temperature.

The charging will be stopped at the specified capacity level, and charging will not be allowed until the battery drained to the  given level.

These temperature and capacity levels can be set distinctly for Cyclecharge and Supercharge modes.

See [bcc.user.conf](https://github.com/seffparker/android-scripts/blob/master/sdcard/lab/android/etc/bcc.user.conf) for additional configuration.

## Features
- Dynamically adjust current based on battery temperature
- Pause and resume charging at specified battery temperatures.
- Stop charging at specified battery level%
- Notification with charging mode, charger current, charger voltage, battery voltage, battery temperature, and battery level%
- Compatible with [status-widget](https://github.com/seffparker/android-scripts/blob/master/doc/status-widget.md)
- Charging modes can be toggled via notification button.
- Notification can be hidden.
- Logging and debugging.

## Usage
```
Usage: start | status | restart | stop
```

## Examples
```
basic-charging-control restart
Stopping Basic Charging Control (PID: 30050)  [ DONE ]
Starting Basic Charging Control (PID: 27350)  [ DONE ]
```

## Preview
![basic-charging-control](/doc/images/basic-charging-control.png)
