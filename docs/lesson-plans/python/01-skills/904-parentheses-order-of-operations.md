---
title: Using Parentheses to Change the Order of Operations
description: How to make addition happen before multiplication
---

The order of operations in the _Python_ programming language is pretty much the same as the order of operations that students get taught in math class.

## Dependencies

Students need to have these skills before learning this skill:

- [The Four Main Arithmetic Operators](four-main-arithmetic-operators)

## Goal

When you teach this skill, your goal is to make it so that students can write code that looks like this:

```python
a = 1 + 2 * 3
b = (1 + 2) * 3
```

## Activities

Here are some activities that you can do in order to teach this skill.

### Writing code on the board

1. Write this code on the board:

    ```python
    number = 1 + 2 * 3
    ```

2. Ask students what they think that code will do.

3. Explain to students why that line of code sets `number` to `7`.

4. Change the code so that it looks like this:

    ```python
    number = (1 + 2) * 3
    ```

5. Ask students what they think that code will do.

6. Explain to students why that line of code sets `number` to `9`.
