# Workflow
## Enter Environment
```bash
source victor/bin/activate
```

## Start Server
```bash
python manage.py runserver
```

# print
```python
print(number)
```

# get input and print it
```python
name = input("Enter your name: ")
print("Your name is: ", name)
```

# convert
```python
integer_number = int(float_number)
```

```python
number1 = float(input("Enter a float number: ")
```

# f Strings
```python
# set variables values
name = 'Victor'
location = "San Juan"

# insert values into string
print(f"I'm {name} and I live in {location}")
```

# CLI Input
```
celsius_temperature = float(input("Enter the temperature in Celsius: "))
side_a = float(input("Enter side a: "))
side_b = float(input("Enter side b: "))
side_c = float(input("Enter side c: "))
```

# Logic
```
print(name == "Victor")
print(number != 5)
print(number == "5")

firstvalue = int(input("Enter an integer: "))
secondvalue =  int(input("Enter a second integer: "))
print(f"firstvalue < secondvalue: {firstvalue < secondvalue}")

# Print odd or even numbers
print(number % 2 != 0)
print(number % 2 == 0)

# check if a number is divisible by five by testing if the remainder is zero.
print(number % 5 == 0)

# Check the that n1 is greater than both, n2 and n3
n1 = int(input("Enter n1: "))
n2 = int(input("Enter n2: "))
n3 = int(input("Enter n3: "))
print(n1 > n2 and n1 > n3)

# If statement
if age < 21:
    print("You are less than 21 years old.")

# If statement
if age >= 18:
    print("You can vote.")

# If/Else statement
if age >= 18:
    print("You can vote.")
else:
    print("You may not vote.")

# If/Elif/Else statement
if a > b:
    print("A is greater than B.")
elif a == b:
    print("A is equal to B.")
else:
    print("A is less than B.")
```
