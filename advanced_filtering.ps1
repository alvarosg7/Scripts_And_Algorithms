

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

# List Top 3 Largest Files 
# Navigate to a directory and list the top 3 largest files.

# Monitor Processes Consuming High Memory 
# Continuously monitor and display processes consuming more than 100 MB of memory.

# Display Disk Usage 
# Use a PowerShell cmdlet to display information about your system's drives (e.g., free space, total size).

# Find Processes with Specific Properties
# Use Get-Process to display processes with specific properties (e.g., Name, CPU, and Id).