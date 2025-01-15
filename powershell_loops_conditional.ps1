

# 1. Check Disk Space

# Objective: Monitor a specific drive and alert if free space drops below a threshold. 
# Prompt: Write a script that checks the free space on drive C: every 5 seconds. If the free space is less than 10 GB, display a warning message.



while ($true) {
    $FreeSpace = Get-PSDrive -PSProvider FileSystem -Name C
    if($FreeSpace.Free -lt 10GB){write-host "Warning, free space less than 10GB"} 
    Start-Sleep -Seconds 5
}


# 2. Restart Stopped Services

# Objective: Automate service management.
# Prompt: Write a script that loops through all services. If a service has a Stopped status and its startup type is Automatic, attempt to restart it and log the service name.

# 3. Find Large Files in Real-Time

# Objective: Detect large files dynamically.
# Prompt: Create a script to continuously monitor a directory (e.g., C:\Temp) for files larger than 100 MB. Use a While loop to recheck the directory every 10 seconds. Log the file names and sizes.
 
# 4. Identify and Terminate High Memory Processes

# Objective: Manage system resources. 
# Prompt: Write a script to find processes using more than 500 MB of memory. If any process matches, display its name and ID, and ask the user if they want to terminate it. If the user agrees, terminate the process.
 
# 5. Generate Multiplication Table

# Objective: Practice nested loops. 
# Prompt: Create a script that generates a multiplication table (from 1 to 10) using a nested loop and displays the results in a formatted table.

# 6. Monitor CPU Usage and Send Alerts

# Objective: Automate performance monitoring. 
# Prompt: Write a script that continuously monitors CPU usage for all processes. If any process exceeds 50% CPU usage, log the process name, ID, and CPU usage to a file. The script should stop after 5 minutes.

# 7. Automate File Archiving

# Objective: Automate repetitive file operations. 
# Prompt: Write a script that checks a directory (e.g., C:\Logs) every 5 minutes for files older than 7 days. If such files are found, move them to an archive folder (e.g., C:\Archive).

# 8. Generate Random Numbers

# Objective: Use loops and conditional statements for logic. 
# Prompt: Create a script to generate 20 random numbers between 1 and 100. Use a loop to iterate through the numbers, and for each:
# Print "High" if the number is greater than 70.
# Print "Medium" if the number is between 30 and 70.
# Print "Low" if the number is less than 30.

# 9. Simulate a Simple Login System

# Objective: Use conditionals for logic flow. 
# Prompt: Write a script that simulates a login system:
# Define a username and password.
# Allow the user up to 3 attempts to input the correct credentials.
# Display appropriate messages for success or failure after 3 attempts.

# 10. Countdown Timer

# Objective: Use loops and timers.
# Prompt: Create a script that functions as a countdown timer. Ask the user for the number of seconds, then count down to 0, updating every second.

# 11. File Monitoring with Alerts

# Objective: Combine file system operations and conditionals. 
# Prompt: Write a script that monitors a specific folder. If any new file with a .txt extension is added, display a message showing the file name and size. Continue monitoring until the user manually stops the script.

# 12. Calculate Prime Numbers

# Objective: Use nested loops and conditionals for calculations. 
# Prompt: Create a script to find all prime numbers between 1 and 100. Use a loop to check each number, and a nested loop to test if it's divisible by any number other than 1 and itself.

# 13. Temperature Conversion Tool

# Objective: Use conditionals and user input. 
# Prompt: Write a script to convert temperatures between Celsius and Fahrenheit. Ask the user for a temperature and the desired conversion direction (C to F or F to C). Display the result.

# 14. Simulate a Number Guessing Game

# Objective: Combine loops, conditionals, and randomness. 
# Prompt: Write a script that generates a random number between 1 and 100. Allow the user to guess the number, and provide feedback ("too high" or "too low"). Stop the game when the user guesses correctly.

# 15. Monitor and Restart a Specific Service

# Objective: Combine looping and conditionals with service management.
# Prompt: Write a script that continuously checks if a specific service (e.g., Spooler) is running. If the service stops, attempt to restart it and log the event. Stop monitoring after 5 minutes.
