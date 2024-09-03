---
title: Turning a str Into a float
description: Useful for taking numeric user input
---

The _Python_ programming language uses data types to distinguish between different types of information.

## Dependencies

Students need to have these skills before learning this skill:

- [Taking User Input](taking-user-input)
- [The `float` Data Type](float-data-type)

## Goal

When you teach this skill, your goal is to make it so that students can write code that looks like this:

```python
number_1 = input("Enter a number: ")
number_1 = float(number_1)
number_2 = input("Enter a second number: ")
number_2 = float(number_2)

print("Total:")
print(number_1 + number_2)
```

## Activities

Here are some activities that you can do in order to teach this skill.

### Why does this code break?

1. Write this code on the board:

    ```python
    number = input("Enter a number: ")
    print(number + 1)
    ```

2. Ask students what they think that code will do.

3. Run the code.

4. Ask students why the code broke. After calling on a few students, reveal the correct answer.

5. Change the code to fix the problem:

    ```python
    number = input("Enter a number: ")
    number = float(number)
    print(number + 1)
    ```

6. Explain how your changes fix the problem.

7. Have students write a similar program on their computers.
