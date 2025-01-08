

$PSVersionTable 

# PowerShell lets you interact with your file system.

Get-ChildItem

# Alias: ls or dir

# Change Directory

Set-Location -Path "C:\Users\alvaro\Desktop\coding_practice"

# Alias: cd

# View current directory

Get-Location 

# Alias pwd

# Powershell returns data as objects, not plain text. This allows you to manipulate and format data easily

Get-Process

# Each process is an object with properties like Name, Id, CPU, and more. You can view a specific property:

(Get-Process -Name notepad).CPU


# List all processes and filter for those consuming significant CPU (>10)

Get-Process | Where-Object{$_.CPU -gt 10}


# Explanation
# Get-Process: Retrieves a list of all running processes.
# |: The pipeline operator passes the output of Get-Process to the next cmdlet.
# Where-Object: Filters objects based on a condition.
# $_: Represents the current object in the pipeline.
# $_.CPU: Accesses the CPU property of the current object.
# -gt 10: Filters processes where the CPU value is greater than 10.



# Exercises: PowerShell Basics

# List Services That Are Running

# List all services on your system and filter to show only those with the status Running.

get-service | where-object{$_.Status -eq 'Running'}

# Find Processes by Name
 
# Use Get-Process to find processes with the name chrome (or any process you want).
 
get-process | where-object{$_.processname -eq 'chrome'}

# Sort Processes by Memory Usage

# List all processes and sort them by their working set (memory usage) in descending order.

get-process | sort-object{$_.PM} -descending 

or 

get-process | sort-object -Property PM -Descending

# Find Large Files
 
# Navigate to a directory (e.g., C:\Windows) and list all files larger than 10 MB.

Get-ChildItem -Path "C:\Windows" -Recurse -File | Where-Object {$_.Length -gt 10MB}

# Explanation

# Get-ChildItem: Lists files and directories.
 
# -Path "C:\Windows": Specifies the directory to search.
# -Recurse: Includes subdirectories in the search.
# -File: Limits the search to files (ignores directories).

# | (Pipeline): Passes the output to the next command.

# Where-Object: Filters the files based on a condition.
 
# $_: Represents the current file object in the pipeline.
# $_ .Length: Refers to the file size in bytes.
# -gt 10MB: Filters files larger than 10 MB (PowerShell recognizes 10MB as 10 megabytes).

# Optional Enhancements
# Sort by Size: Add Sort-Object -Property Length -Descending to sort files by size:

Get-ChildItem -Path "C:\Windows" -Recurse -File | Where-Object {$_.Length -gt 10MB} | Sort-Object -Property Length -Descending

# Select Specific Properties: Display only the name and size:

Get-ChildItem -Path "C:\Windows" -Recurse -File | Where-Object {$_.Length -gt 10MB} | Select-Object Name, Length


# List Top CPU-Consuming Processes
 
# Display the top 5 processes consuming the most CPU time.

Get-Process | Sort-Object -Property CPU -Descending | Select -First 5

# Filter Files by Extension
 
# Navigate to a folder and list only files with the .txt extension.

Get-ChildItem -Path 'C:\Users\Alvaro.Sandino\OneDrive - Rapid Data GmbH\Desktop' -Recurse -File -Include *.txt
