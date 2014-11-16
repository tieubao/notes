---
layout: post
title: "Geeky solutions: 1.1 Easy Keypad"
date: 2014-12-15 21:34:44 +0700
comments: true
categories: 
- geeky.vn
- geek

keywords: geeky.vn, geeky
description: I will try to solve some quizs at http://www.geeky.vn/
cover: /images/blog/2014-12-15-ps2-room-1-1-keypad.jpg

---

## Problem Set 2: THE ROOM 1.1: Easy keypad

OK. After registration, you will get into room 1.1 with the picture from Saw movie and it make me feel something creepy.

{% img /images/blog/2014-12-15-ps2-room-1-1.png %}

You are in the room. There's the door, with the keypad. You need guess the passcode to get out.

{% img /images/blog/2014-12-15-ps2-room-1-1-keypad.jpg %}

```
The standard keypad layout is as followed:
1 2 3
4 5 6
7 8 9
* 0 #

Input:

- First line: length of the passcode
- Next 4 lines: standard keypad layout with values of max the button is used in the passcode. For example: 0 means the button is never used, 1 means it's used at most 1 time, 2 means it's used at most 2 times in the passcode.

Output:
- All the result combinations, sorted by ascending. Each combination on a line.

Sample input:
3
0 0 0
1 0 0
0 2 0
0 1 0

Sample output:
0 4 8
0 8 4
0 8 8
4 0 8
4 8 0
4 8 8
8 0 4
8 0 8
8 4 0
8 4 8
8 8 0
8 8 4
```

Press `help` and you will get more commands.

```
Available commands:
ls, cat, cd     You know what these are.
submit          Upload solution for current puzzle. Supported languages: Ruby 1.9.2, PHP, C, C++, Perl, Python
submit test     Upload simple file to read input and write the same output.
All are standard input and output
Check notifications.txt for result. It may take a while due to long queue.
```

Back to the problem, they want you to write a program that receive input from keyboard. Map the input array to the keypad value then list out all the sub-arrays that has the same length as the passcode. You need to write it in their supported languages and submit the solution via command `submit`.

Honestly, I'm too lazy to those kind of problems :smile:. Let's find the solution somewhere else. StackOverflow is a good option. (Learn from other is good too).

- [Algorithm to return all combinations of k elements from n](http://stackoverflow.com/questions/127704/algorithm-to-return-all-combinations-of-k-elements-from-n)
- [What is the best way to find all combinations of items in an array?](http://stackoverflow.com/questions/1952153/what-is-the-best-way-to-find-all-combinations-of-items-in-an-array)
- [How can I obtain all the possible combination of a subset?](http://stackoverflow.com/questions/13765699/how-can-i-obtain-all-the-possible-combination-of-a-subset)

All materials is here. Let's cook them.

**Step 1: Write python script that receive input from keyboard.**
```
N
0 0 0
1 0 0
0 2 0
0 1 0
```

**Step 2: Convert input to an array**

```
Value: 0 0 0 1 0 0 0 2 0 0 1  0 
Index: 0 1 2 3 4 5 6 7 8 9 10 11
```

```
Array with meaningful elements: 
4 8 8 0
```

**Step 3: Apply algorithm to list all sub-array with given length `N`**

You can use the solution from the internet or write by yourself. Python offers a great [`itertools`](https://docs.python.org/2/library/itertools.html) lib to handle that kind of stuff.

``` python

result = list(itertools.permutations(a, length))
result = sorted(set(result))

```

I think my own solution works well but it does not pass the test. Maybe I should quit.

``` python
import itertools

input_arr = list()
length = int(raw_input())

# Input
for i in xrange(0, 4):
	s = raw_input()
	s = s.split()
	for item in s:
		input_arr.append(int(item))

# Mapping input to real values
a = list()
for i in xrange(len(input_arr)):
	if (input_arr[i] != 0):
		for j in xrange(input_arr[i]):
			if i <= 8:
				a.append(i + 1)
			else:
				a.append(0)

# Generate
result = list(itertools.permutations(a, length))
result = sorted(set(result))

# Print out the result
for item in result:
	val = ""
	for i in (xrange(0, length)):
		if i < length - 1:
			val = val + str(item[i]) + " "
		else:
			val = val + str(item[i])
			
	print val
```


Sample:

```
4
1 0 0
0 1 0
2 0 0
0 1 0
0 1 5 7
0 1 7 5
0 1 7 7
0 5 1 7
0 5 7 1
0 5 7 7
0 7 1 5
0 7 1 7
0 7 5 1
0 7 5 7
0 7 7 1
0 7 7 5
1 0 5 7
1 0 7 5
1 0 7 7
1 5 0 7
1 5 7 0
1 5 7 7
1 7 0 5
1 7 0 7
1 7 5 0
1 7 5 7
1 7 7 0
1 7 7 5
5 0 1 7
5 0 7 1
5 0 7 7
5 1 0 7
5 1 7 0
5 1 7 7
5 7 0 1
5 7 0 7
5 7 1 0
5 7 1 7
5 7 7 0
5 7 7 1
7 0 1 5
7 0 1 7
7 0 5 1
7 0 5 7
7 0 7 1
7 0 7 5
7 1 0 5
7 1 0 7
7 1 5 0
7 1 5 7
7 1 7 0
7 1 7 5
7 5 0 1
7 5 0 7
7 5 1 0
7 5 1 7
7 5 7 0
7 5 7 1
7 7 0 1
7 7 0 5
7 7 1 0
7 7 1 5
7 7 5 0
7 7 5 1
```