#!/usr/bin/python3

def safe_print_list(my_list=[], x=0):
"""Print x elememts in a list.

Args:
my_list (list): Show the list to print elements from.
x (int): Elements in my_list to print.

Returns:
The number of elements is actually printed.
"""
ret = 0
for i in range(x):
try:
print("{}".format(my_list[i]), end="")
ret += 1
except IndexError:
break
print("")
return(ret)
