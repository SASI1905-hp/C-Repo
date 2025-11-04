# Classes in Python
class Car:
    def __init__(self, brand, model, year):
        self.brand = brand
        self.model = model
        self.year = year
    
    def display_info(self):
        print(f"{self.year} {self.brand} {self.model}")
    
    def age(self):
        return 2024 - self.year

car1 = Car("Toyota", "Camry", 2020)
car1.display_info()
print(f"Car age: {car1.age()} years")

class Person:
    count = 0
    
    def __init__(self, name, age):
        self.name = name
        self.age = age
        Person.count += 1
    
    def __str__(self):
        return f"Person({self.name}, {self.age})"
    
    @staticmethod
    def is_adult(age):
        return age >= 18
    
    @classmethod
    def from_birth_year(cls, name, birth_year):
        age = 2024 - birth_year
        return cls(name, age)

p1 = Person("Alice", 25)
p2 = Person("Bob", 17)
print(p1)
print(p2)
print(f"Total people: {Person.count}")
print(f"Is Alice adult? {Person.is_adult(p1.age)}")

p3 = Person.from_birth_year("Charlie", 1995)
print(p3)
print(f"Total people now: {Person.count}")
