# Exception Handling in Python
try:
    result = 10 / 2
    print(f"Result: {result}")
except ZeroDivisionError:
    print("Error: Division by zero!")

try:
    num = int("abc")
except ValueError:
    print("Error: Invalid number format!")

try:
    lst = [1, 2, 3]
    print(lst[10])
except IndexError:
    print("Error: Index out of range!")

try:
    d = {'name': 'Alice'}
    print(d['age'])
except KeyError as e:
    print(f"Error: Key not found - {e}")

try:
    f = open('nonexistent.txt', 'r')
except FileNotFoundError:
    print("Error: File not found!")

try:
    x = int("10")
    result = 100 / x
    print(f"Result: {result}")
except (ValueError, ZeroDivisionError) as e:
    print(f"Error: {type(e).__name__}")

def validate_age(age):
    if age < 0:
        raise ValueError("Age cannot be negative")
    if age > 150:
        raise ValueError("Age cannot be greater than 150")
    return True

try:
    validate_age(-5)
except ValueError as e:
    print(f"Validation Error: {e}")

try:
    validate_age(200)
except ValueError as e:
    print(f"Validation Error: {e}")

print("All exception handling examples completed successfully!")
