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

```
basic-charging-control restart
Stopping Basic Charging Control (PID: 30050)  [ DONE ]
Starting Basic Charging Control (PID: 27350)  [ DONE ]
```

## Preview
![basic-charging-control](/doc/images/basic-charging-control.png)

## Test Data
Using the below temperature values:
```
# Limits for Cyclecharge mode
CYCLE_MIN_TEMP=33
CYCLE_PAUSE_TEMP=40
CYCLE_RESUME_TEMP=37

# Limits for Supercharge mode
SUPER_MIN_TEMP=38
SUPER_PAUSE_TEMP=44
SUPER_RESUME_TEMP=40
```
and a 12v / 3A USB charger, the current limits will be like below:
![bcc_current_limit_testdata](/doc/images/bcc_current_limit_testdata.png)

The X-axis is battery temperature and Y-axis is charging current. The charging current will be different at different temperature on each modes.  
