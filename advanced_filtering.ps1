

# Advanced Filtering

# Find Idle Processes
# Use Get-Process to find processes consuming less than 1% CPU time (< 1).

get-process | Where-Object{$_.CPU -lt 1} 

# Filter Services by Startup Type 
# List all services that are set to start automatically.

Get-CimInstance -ClassName Win32_Service | Where-Object {$_.StartMode -eq 'Auto'}

# Explanation

# Get-CimInstance:
# Retrieves detailed service information, including the startup type.
# The Win32_Service class represents services on a Windows system.

# Where-Object:
# Filters based on the StartMode property.
# StartMode -eq 'Auto': Selects services with a startup type of Automatic.

# StartMode Values:
# Auto: Automatic startup.
# Manual: Manual startup.
# Disabled: Disabled service.


# Identify Stopped Services 
# List all services that have the status Stopped.

Get-Service | Where-Object{$_.Status -eq 'Stopped'}

# Find Files Modified Recently 
# Navigate to a directory and find all files modified within the last 7 days.

Get-ChildItem -Path 'C:\Users\Alvaro.Sandino\OneDrive - Rapid Data GmbH\Desktop' -Recurse -File | Where-Object {$_.LastWriteTime -ge (Get-Date).AddDays(-7)}

# Bonus Challenges

# Get System Uptime 
# Find how long the system has been running using Get-WmiObject or another cmdlet.

(Get-WmiObject -Class Win32_OperatingSystem).LastBootUpTime

# or

(Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime

# Get-Uptime only works on powershell version 6 or above

##################################################################################################################

# List Top 3 Largest Files 
# Navigate to a directory and list the top 3 largest files.

Get-ChildItem -Path 'C:\Users\Alvaro.Sandino\OneDrive - Rapid Data GmbH\Desktop' -Recurse -File | Sort-Object -Property Length -Descending | Select-Object -First 3

##################################################################################################################

# Monitor Processes Consuming High Memory 
# Continuously monitor and display processes consuming more than 100 MB of memory.

while ($true) {
    Clear-Host
    Get-Process | Where-Object {$_.WorkingSet64 -gt 100MB} | Select-Object Name, Id, WorkingSet64 | Sort-Object -Property WorkingSet64 -Descending
    Start-Sleep -Seconds 2
}


# Explanation

# WorkingSet64:
# Represents the memory consumed by the process in bytes.
# To compare against 100 MB, use the suffix MB, which PowerShell recognizes as shorthand for megabytes.

# while ($true):
# Creates an infinite loop to monitor processes continuously.

# Clear-Host:
# Clears the console each time the loop runs to make the output easier to read.

# Start-Sleep -Seconds 2:
# Pauses for 2 seconds between each iteration to avoid overwhelming the console with updates.

# Sort-Object -Descending:
# Ensures the highest memory-consuming processes are displayed at the top.

# Select-Object:
# Limits the displayed properties to Name, Id, and WorkingSet64 (memory in bytes).

##################################################################################################################

# Display Disk Usage 
# Use a PowerShell cmdlet to display information about your system's drives (e.g., free space, total size).

Get-PSDrive -PSProvider FileSystem | Select-Object Name, Used, Free, @{Name='Total'; Expression = {$_.Used + $_.Free}}

# Explanation

# Get-PSDrive:
# Lists all PowerShell drives.
# -PSProvider FileSystem: Filters to include only file system drives (local or network).

# Used and Free:
# Used: Space used on the drive, in bytes.
# Free: Available space on the drive, in bytes.

# Custom Property Total:
# Uses a calculated property to add Used and Free to show the total drive size.

# Or to make the output more user-friendly:

Get-PSDrive -PSProvider FileSystem | ForEach-Object {
    [PSCustomObject]@{
        Name       = $_.Name
        UsedSpace  = "{0:N2} GB" -f ($_.Used / 1GB)
        FreeSpace  = "{0:N2} GB" -f ($_.Free / 1GB)
        TotalSpace = "{0:N2} GB" -f (($_.Used + $_.Free) / 1GB)
    }
}

##################################################################################################################


# Find Processes with Specific Properties
# Use Get-Process to display processes with specific properties (e.g., Name, CPU, and Id).

Get-Process | Select-Object ProcessName, CPU, Id

# Customize Column Names: To rename columns for better readability:

Get-Process | Select-Object @{Name='Name'; Expression={$_.ProcessName}},  @{Name='CPU Usage (s)'; Expression={$_.CPU}}, Id
