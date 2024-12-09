

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


