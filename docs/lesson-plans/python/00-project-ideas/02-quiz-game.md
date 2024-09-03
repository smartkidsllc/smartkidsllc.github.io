---
title: Quiz Game
description: A game where you earn points by answering questions correctly
---

The Quiz Game project is about making a program that asks the user a series of questions and awards them points for choosing the “correct” answers.

## Dependencies

Students need to have these skills before starting on this project:

- [Printing](/docs/lesson-plans/python/skills/printing)
- [Taking User Input](/docs/lesson-plans/python/skills/taking-user-input)
- [If Statements](/docs/lesson-plans/python/skills/if-statements)
- [Incrementing `int`s](/docs/lesson-plans/python/skills/incrementing-ints)

## End result

Once a student completes this project, the end result will look something like this:

```python
score = 0

answer_1 = input("Who was the first president? ")
if answer_1 == "George Washington":
    print("Correct!")
    score = score + 1

answer_2 = input("What’s 1 + 1? ")
if answer_2 == "2":
    print("Correct!")
    score = score + 1

answer_3 = input("Is the Eath flat? ")
if answer_3 == "Yes":
    print("Correct!")
    score = score + 1

print("Your final score:")
print(score)
```

### Potential variations

You can help students make their quiz games case insensitive by using [the `str.lower()` function](https://docs.python.org/3/library/stdtypes.html#str.lower).

```python
answer_1 = input("Who was the first president? ")
answer_1 = answer_1.lower()
if answer_1 == "george washington":
    print("Correct!")
    score = score + 1
```
