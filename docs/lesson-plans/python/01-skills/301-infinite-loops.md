---
title: Infinite Loops
description: How to make code repeat forever
---

The _Python_ programming language doesn’t have a dedicated construct for infinite loops, but it’s easy enough to create a while loop that runs forever.

## Dependencies

Students need to have these skills before learning this skill:

- [Taking User Input](taking-user-input)

## Goal

When you teach this skill, your goal is to make it so that students can write code that looks like this:

```python
while True:
    name = input("Enter you name: ")
    print("You are")
    print(name)
```

## Activities

Here are some activities that you can do in order to teach this skill.

### Writing on the board

1. Write this code on the board:

    ```python
    while True:
        favorite_color = input("What is your favorite color? ")
    ```

2. Ask students what they think that code is going to do.

3. Run the code and show students what it actually does.

4. Explain to students why the code does what it does.
