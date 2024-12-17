def find_pair_with_sum(numbers, target):
    """
    Finds two numbers in the list `numbers` whose sum equals `target`.

    Parameters:
        numbers (list): A list of integers.
        target (int): The target sum.

    Returns:
        tuple: A tuple of the two numbers whose sum equals `target`, or None if no pair is found.
    """

if __name__ == "__main__":
    # Predefined lists of numbers and target sums
    predefined_lists = [
        ([2, 8, 11, 15, -2], 9),
        ([1, 3, 5, 7], 10),
        ([10, 20, 30, 40], 50),
        ([0, -1, -2, -3], -3)
    ]

    for numbers, target in predefined_lists:
        print(f"List: {numbers}, Target: {target}")
        result = find_pair_with_sum(numbers, target)
        if result:
            print(f"The numbers that add up to {target} are: {result}\n")
        else:
            print(f"No two numbers add up to {target}.\n")
