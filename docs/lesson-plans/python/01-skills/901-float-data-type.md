---
title: The float Data Type
description: How to store fractional numbers
---

The _Python_ programming language has two main numeric data types. `int`s store integers, and `float`s store real numbers.

## Dependencies

Students need to have these skills before learning this skill:

- [Data Type Fundamentals](data-types)

## Goal

When you teach this skill, your goal is to make it so that students can write code that looks like this:

```python
a = 1.5
b = 100.2
print(a + b)
```

## Activities

Here are some activities that you can do in order to teach this skill.

### What’s the difference?

1. Write this code on the board:

    ```python
    number_1 = 0
    number_2 = 0.0
    ```

2. Ask students if there’s a difference between the two variables. Ask if the difference matters.

3. After accepting a few answers change the code so that it looks like this:

    ```python
    number_1 = 0
    number_2 = 0.0

    print(number_1)
    print(number_2)
    ```

4. Show students what that code does.

5. Now change the code on the board so that it looks like this:

    ```python
    number_1 = 0
    number_2 = 0.0
    number_3 = 0.00000000000

    print(number_1)
    print(number_2)
    print(number_3)
    ```

6. Ask students what they think that code is going to print.

7. Run the code and show students what it prints.

8. Explain to students the difference between `int`s and `float`s.

9. Add some more examples of `float`s to the board:

    ```python
    height = 1.5
    width = 3.1
    area = height * width

    print(area)
    ```
