# adblock
System hosts file based AdBlocker. 
Based on StevenBlack's community hosts file.
We can also define our user entries and excludes too.

## Usage
```
 -d, disable
 -e, enable
 -u, update [curl opts]
```
## Examples
```
# adblock -d
[2020-08-15 20:06:12 IST] - Disabling Adblock  [ DONE ]

# adblock enable
[2020-08-15 20:06:24 IST] - Enabling Adblock  [ DONE ]

# adblock -e
[2020-08-15 20:06:44 IST] - Enabling Adblock  [ SKIP ]

# adblock -u
[2020-08-15 20:06:51 IST] - Updating Adblock  [ BEGIN ]
[2020-08-15 20:06:51 IST] - Downloading update  [ SKIP ]
[2020-08-15 20:06:53 IST] - Updating user entries  [ SKIP ]
[2020-08-15 20:06:53 IST] - Processing excludes  [ SKIP ]
[2020-08-15 20:06:53 IST] - Applying new update  [ SKIP ]
[2020-08-15 20:06:53 IST] - Community update: 14 August 2020
[2020-08-15 20:06:54 IST] - Community entries: 59,129
[2020-08-15 20:06:54 IST] - User entries: 72
[2020-08-15 20:06:54 IST] - Updating Adblock  [ DONE ]
```
