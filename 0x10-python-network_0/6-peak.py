#!/bin/Python3

def find_peak(list_of_integers):
    if not list_of_integers:
        return None

    low, high = 0, len(list_of_integers) - 1

    while low < high:
        mid = (low + high) // 2

        # Compare mid element with its neighbors
        if list_of_integers[mid] > list_of_integers[mid + 1]:
            high = mid
        else:
            low = mid + 1

    # At the end of the loop, low and high will be pointing to the peak
    return list_of_integers[low]

# Example usage:
my_list = [1, 3, 20, 4, 1, 0]
result = find_peak(my_list)
print("Peak:", result)
