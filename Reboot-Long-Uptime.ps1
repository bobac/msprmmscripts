param(
$DaysTreshold = 10,
$WarningTimeSec = 300
)
$OS = Get-WmiObject win32_operatingsystem
$BootTime = $OS.ConvertToDateTime($OS.LastBootUpTime)
$LocalTime = $OS.ConvertToDateTime($OS.LocalDateTime)
$UpTime = $LocalTime - $BootTime
$UpTime
echo "Days Treshold: $DaysTreshold"
echo "Warning Time: $WarningTimeSec"
if ($UpTime.Days -ge $DaysTreshold)
{
  echo "reboot"
  shutdown /r /t $WarningTimeSec
}
else
{
  echo "noreboot"
}
 