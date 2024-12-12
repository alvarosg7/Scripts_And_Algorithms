

# Exercise 1: FizzBuzz
# Write a program that prints numbers from 1 to 50.
# 
# For multiples of 3, print "Fizz".
# For multiples of 5, print "Buzz".
# For multiples of both 3 and 5, print "FizzBuzz".

for i in range (1,51):
    if  i % 3 == 0 and i % 5 == 0:
        print('FizzFuzz')
    elif i % 3 == 0:
        print('Fizz')
    elif i % 5 == 0:
        print('Fuzz')
    else:
        print(i)


# Exercise 2: Prime Number Checker
# Write a program that checks if a number (from user input) is a prime number.
# A prime number is only divisible by 1 and itself.

number = int(input('enter your number here: '))

if number < 2:
        print('Not a prime number')
else:
    for j in range(2, number):
         if number % j == 0:
              print('Not a prime number')
              break
    else:
         print('Prime number')


# Exercise 3: Multiplication Table
# Write a program that generates the multiplication table for numbers from 1 to 10.

# Each number should display its multiplication results from 1 to 10.

# Exercise 4: Finding the Largest Number
# Write a program that takes a list of numbers from the user (comma-separated).
# Use a loop to find and print the largest number in the list.

# Exercise 5: Guess the Number
# Write a program that:

# Randomly picks a number between 1 and 100.
# Allows the user to guess the number.
# After each guess, tells the user if the number is too high, too low, or correct.