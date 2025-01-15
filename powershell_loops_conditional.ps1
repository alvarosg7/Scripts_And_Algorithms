

# 1. Check Disk Space

# Objective: Monitor a specific drive and alert if free space drops below a threshold. 
# Prompt: Write a script that checks the free space on drive C: every 5 seconds. If the free space is less than 10 GB, display a warning message.



while ($true) {
    $FreeSpace = Get-PSDrive -PSProvider FileSystem -Name C
    if($FreeSpace.Free -lt 10GB){write-host "Warning, free space less than 10GB"} 
    Start-Sleep -Seconds 5
}