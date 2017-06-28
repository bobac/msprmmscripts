# MSP RMM scripts
Hopefully slowly-growing set of small useful scripts for MSP RMM tasks
## Reboot-Long-Uptime.ps1
Designed to be run in a regular manner (e.g. each hour and reboot machine if it is running for longer than specified number of days). The reason is to avoid reboot windows at night when most of the notebooks are hibernated and the time for reboot task is missed. Furthermore, from Windows 8 on there is another issue with shuting down the machine which actually does not shut down the OS, it just hibernates it do disk. Which might lead to unacceptable long uptimes (weeks, months).

### Usage:
When ivoked, it looks for -DaysTreshold (default 10 minutes) and -WarningTimeSec (default 300 seconds - 5 minutes). If the machine's uptime is greater than -DaysTreshold [in days] the machine is rebooted. That's all :-)
Intended to be run from scheduler or as an Automated task from MSP RMM agent.

### Example:
```Reboot-Long-Uptime -DaysTreshold 2 -WarningTimeSec 60
- reboots the machine if it is runnint for more than 2 days with 1 minute notice to user
