# Dictionary Operations in Python
person = {'name': 'John', 'age': 30, 'city': 'New York'}
print(f"Dictionary: {person}")

# Access values
print(f"Name: {person['name']}")
print(f"Age: {person['age']}")

# Add new key-value pair
person['email'] = 'john@example.com'
print(f"After adding email: {person}")

# Update value
person['age'] = 31
print(f"After updating age: {person}")

# Delete key
del person['city']
print(f"After deleting city: {person}")

# Check if key exists
if 'name' in person:
    print("Name key exists")

# Get all keys
print(f"Keys: {list(person.keys())}")

# Get all values
print(f"Values: {list(person.values())}")

# Get key-value pairs
print(f"Items: {list(person.items())}")

# Iterate over dictionary
for key, value in person.items():
    print(f"{key}: {value}")

# Dictionary methods
print(f"Get name: {person.get('name')}")
print(f"Get phone (with default): {person.get('phone', 'Not found')}")

# Length of dictionary
print(f"Number of items: {len(person)}")

# Clear dictionary
person_copy = person.copy()
print(f"Copied dictionary: {person_copy}")
