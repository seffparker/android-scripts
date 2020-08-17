# basic-charging-control
Limit charging current and level to increase the efficiency and lifespan of battery.

A notification will be shown with charging mode, charger current, charger voltage, battery voltage, battery temperature, and battery level%

**Cyclecharge mode:** The charging current will be limited according to the charger voltage. The charging will be stopped at the given LEVEL_MAX, and charging will not be allowed until the battery drained to LEVEL_MIN

**Supercharge mode:** Charge at the maximum current supported by the charger.

See `bcc.conf` for additional configuration.

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