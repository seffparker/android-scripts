# basic-charging-control
Limit charging current and level to increase the efficiency and lifespan of battery.
This project is inspired from [ACC](https://github.com/VR-25/acc), but with minimal options and device support.

The charging current will be dynamically adjusted according battery temperature, battery level, and charger voltage. Charging will be paused at the specified temperature and will be resumed only when the battery is cooled to the given temperature.

The charging will be stopped at the specified capacity level, and charging will not be allowed until the battery drained to the specified level.

These temperature and capacity levels can be set distinctly for Cyclecharge and Supercharge modes.

See [bcc.user.conf](https://github.com/seffparker/android-scripts/blob/master/sdcard/lab/android/etc/bcc.user.conf) for additional configuration.

## Features
- Dynamically adjust current based on battery temperature and level.
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

```
basic-charging-control restart
Stopping Basic Charging Control (PID: 30050)  [ DONE ]
Starting Basic Charging Control (PID: 27350)  [ DONE ]
```

## Notification Preview
![basic-charging-control](/doc/images/basic-charging-control.png)

## Sample Configuration Data
Using the below configuration values:
```
# Limits for Cyclecharge mode
CYCLE_MAX_LIMIT=5
CYCLE_LIMIT_LEVEL=75
CYCLE_STOP_LEVEL=90
CYCLE_LIMIT_TEMP=33
CYCLE_PAUSE_TEMP=40
CYCLE_RESUME_TEMP=37

# Limits for Supercharge mode
SUPER_MAX_LIMIT=0
SUPER_LIMIT_LEVEL=90
SUPER_STOP_LEVEL=100
SUPER_LIMIT_TEMP=38
SUPER_PAUSE_TEMP=44
SUPER_RESUME_TEMP=40
```
and a 12v / 3A USB charger:
The current limits according to battery temperature will be like below:
![bcc_current_temperature](/doc/images/bcc_current_temperature.png)

The current limits according to battery capacity will be like below:
![bcc_current_capacity](/doc/images/bcc_current_capacity.png)

When the current limit is to be imposed by both capacity level and temperature at the same time, then the larger limit with the lease current will applied.
