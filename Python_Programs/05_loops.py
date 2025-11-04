# Loops in Python - for and while examples
print("For loop:")
for i in range(5):
    print(f"Number {i}")

print("\nWhile loop:")
i = 0
while i < 5:
    print(f"Count: {i}")
    i += 1

print("\nFor loop with list:")
fruits = ['apple', 'banana', 'cherry']
for fruit in fruits:
    print(f"Fruit: {fruit}")

print("\nFor loop with enumerate:")
for idx, fruit in enumerate(fruits):
    print(f"{idx}: {fruit}")

print("\nNested loops:")
for i in range(3):
    for j in range(2):
        print(f"i={i}, j={j}")
