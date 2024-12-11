

# Data Structures
# Python has powerful built-in data structures:

# Lists: Ordered, mutable collections.
# Tuples: Ordered, immutable collections.
# Dictionaries: Key-value pairs.
# Sets: Unordered collections with no duplicates.

# 1. Lists
# Lists are ordered collections that can store multiple items.

fruits = ["apple", "banana", "cherry"]
print(fruits[0])  # Access the first item
fruits.append("orange")  # Add an item
fruits.remove("banana")  # Remove an item
print(fruits)

# Task 1
# Write a program to create a list of five numbers.
# Add another number to the list, remove one number, and print the updated list.

numbers = [1,2,3,4,5]
numbers.append(6)
numbers.remove(4)
print(numbers)


coordinates = (10, 20)
print(coordinates[0])  # Access the first item

# Task 2
# Write a program to create a tuple with three colors.
# Print each color individually using indexing.

colors = ('blue', 'yellow', 'green')
print(colors[0])
print(colors[1])
print(colors[2])

# 3. Dictionaries
# Dictionaries store data as key-value pairs.

# Example

person = {"name": "Alice", "age": 25}
print(person["name"])  # Access the value for "name"
person["age"] = 26  # Update the value for "age"
print(person)


# Task 3
# Write a program to create a dictionary for a book with keys: "title", "author", and "year".
# Print the book's title and update its year.

book = {"title": "1984", "author": "George Orwell", "year": 1949}

book["year"] = 1950
print(book["title"], book["year"])


# 4. Sets
# Sets are collections of unique items.

numbers = {1, 2, 3, 3}  # Duplicate "3" is ignored
numbers.add(4)
numbers.remove(2)
print(numbers)

# Task 4
# Write a program to create a set of three numbers.
# Add another number, try adding a duplicate, and print the set.

nums = {3,4,5}
nums.add(6)
nums.add(3)
print(nums)

