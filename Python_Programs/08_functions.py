# Functions in Python
def greet(name):
    return f"Hello, {name}!"

def add(a, b):
    return a + b

def multiply(x, y):
    return x * y

def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True

def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)

print(greet("Alice"))
print(f"Add 5+3: {add(5, 3)}")
print(f"Multiply 4*7: {multiply(4, 7)}")
print(f"Is 7 prime? {is_prime(7)}")
print(f"Fibonacci(5): {fibonacci(5)}")

def power(base, exponent=2):
    return base ** exponent

print(f"2^3: {power(2, 3)}")
print(f"5^2 (default): {power(5)}")

def print_list(*items):
    for item in items:
        print(f"Item: {item}")

print_list(1, 2, 3, 4)

def print_info(**kwargs):
    for key, value in kwargs.items():
        print(f"{key}: {value}")

print_info(name="Bob", age=25, city="NYC")
