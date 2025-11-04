# File Operations in Python
import os

# Create a file and write to it
with open('test.txt', 'w') as f:
    f.write('Hello World\n')
    f.write('This is a test file\n')

print('File created and written')

# Read the file
with open('test.txt', 'r') as f:
    content = f.read()
    print(f'File content:\n{content}')

# Read lines
with open('test.txt', 'r') as f:
    lines = f.readlines()
    for i, line in enumerate(lines):
        print(f'Line {i}: {line.strip()}')

# Append to file
with open('test.txt', 'a') as f:
    f.write('Appended line\n')

print('File appended')

# Check if file exists
if os.path.exists('test.txt'):
    print('File exists')
    print(f'File size: {os.path.getsize("test.txt")} bytes')

# Delete file
if os.path.exists('test.txt'):
    os.remove('test.txt')
    print('File deleted')
