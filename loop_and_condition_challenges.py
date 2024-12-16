


# Challenge 1: Palindrome Checker
# Write a program that checks if a given string is a palindrome.

# A palindrome reads the same backward as forward (e.g., "madam", "racecar").
# Ignore spaces and capitalization when checking.

str = input("Enter your word here: ")

str_list = list(str)

reversed_str = []

# print(str_list)

for i in range(1,len(str_list) + 1):
    reversed_str.append(str_list[len(str) - i])
    
print(reversed_str)