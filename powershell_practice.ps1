

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