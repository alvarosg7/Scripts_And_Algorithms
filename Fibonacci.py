

def test_fibonacci_function():
    
    """
    Test program that prompts the user to calculate Fibonacci numbers.
    Calculates the nth Fibonacci number.
    """
      
    
    # Prompt the user to enter the desired Fibonacci position
    try:
        num = int(input("Enter the position of the Fibonacci number you want (e.g., 5 for the 5th Fibonacci number): "))
        if num < 0:
            print("The position must be a non-negative integer.")
        else:
            # Call the Fibonacci function and display the result
            result = fibonacci(num)
            print(f"The {num}th Fibonacci number is: {result}")
    except ValueError:
        print("Please enter a valid number!")

# Run the test program
if __name__ == "__main__":
    test_fibonacci_function()


    