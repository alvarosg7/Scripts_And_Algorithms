

# Python practice 

# Step 2: Variables and Data Types
# In Python, we use variables to store data. Python has several data types such as:

# int: Integer numbers (e.g., 5)
# float: Decimal numbers (e.g., 3.14)
# str: Text (e.g., "Hello")
# bool: Boolean values (True or False)


name = "Alvaro"
age = 31
height = 1.81
is_student = False 


print('Name:', name)
print('Age:', age)
print('Height:', height)
print('Is student:', is_student)


# Write a program that calculates the total cost of buying 3 apples at $0.5 each and 2 bananas at $0.3 each. Use variables to store the prices and quantities.

banana = 0.3
apple = 0.5

total_cost = ((3 * apple) + (2 * banana))

print("The total cost is: $",total_cost)



# Task 1: Write a program that:

# Asks the user for their exam score.
# Prints:
# "Fail" if the score is below 50.
# "Pass" if the score is 50-74.
# "Distinction" if the score is 75 or above.


score = int(input("Enter your score: "))

if score < 50:
	print("Fail")
elif 50 < score < 74:
	print("Pass")
else:
	print("Distinction")


# Loops for and While 
# Loops help you create actions 
# for loop: iterate over a sequence (like a list or range)

for i in range(5):
	print("Iteration:", i)

# while loop: continue as long as a condition is True

count = 0

while count < 3:
	print("Count is,", count)
	count += 1


# Task 2: Write a program that:

# Prints numbers from 1 to 10 using a for loop.
# Prints numbers from 10 to 1 using a while loop.

for i in range(1,11):
	print(i)

count_test = 10

while count_test > 0: 
	print(count_test)
	count_test -= 1

#Challenge Task:
# Write a program that:

# Prints all numbers from 1 to 20.
# For each number:
# Print "Even" if it's an even number.
# Print "Odd" if it's an odd number.