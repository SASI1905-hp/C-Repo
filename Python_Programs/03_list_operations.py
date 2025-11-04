# List Operations in Python
numbers = [1, 2, 3, 4, 5]
print("Original list:", numbers)

# Add element
numbers.append(6)
print("After append(6):", numbers)

# Insert element
numbers.insert(0, 0)
print("After insert(0, 0):", numbers)

# Remove element
numbers.remove(3)
print("After remove(3):", numbers)

# List slicing
print("Slice [1:4]:", numbers[1:4])
print("Reversed:", numbers[::-1])
