def find_triplet_with_sum(numbers, target):
    """
    Finds three numbers in the list `numbers` whose sum equals `target`.

    Parameters:
        numbers (list): A list of integers.
        target (int): The target sum.

    Returns:
        tuple: A tuple of the three numbers whose sum equals `target`, or None if no triplet is found.
    """
    # Iterate through the list using three nested loops to find the triplet

if __name__ == "__main__":
    # Predefined lists of numbers and target sums
    predefined_lists = [
        ([2, 8, 11, 15, -2], 21),
        ([1, 3, 5, 7], 15),
        ([10, 20, 30, 40], 100),
        ([0, -1, -2, -3], -3)
    ]

    for numbers, target in predefined_lists:
        print(f"List: {numbers}, Target: {target}")
        result = find_triplet_with_sum(numbers, target)
        if result:
            print(f"The numbers that add up to {target} are: {result}\n")
        else:
            print(f"No three numbers add up to {target}.\n")
