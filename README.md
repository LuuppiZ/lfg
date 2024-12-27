# Luuppi's Flipcard Game
Simple little flip card game template written in bash.
I was inspired to make a flip card game thanks to "[Nihongo quest](https://store.steampowered.com/app/1556070/Nihongo_Quest/)".

# Installation under the history recap!

## First there was v.1
The first one is really simple. One question and answer pair with no alternative answers. 15 pairs max. It was around 550 lines of code and it was just copypasted. It had a seek function.
- 15 question/answer pairs
- only normal mode
- seek function

## Rewrite on version 2
Version 2 was a complete rewrite since the first version was way too simple. This one had a menu, modes in the same file and up to 30 question/answer pairs. A new cool mode was random mode what was really useful. This was the longest file containing almost 10 thousand lines of copypasted code. lol
- 30 question/answer pairs
  - 2.5 introduced experemental a and b sub options for answers/questions.
- modes
  - normal
  - reverse
  - random
  - random reverse
- seek function
- main menu
- small settings menu

## Final version 3
I'm planning this version to be the final one written in Bash since Bash isn't a programming language. I'm learning Python so version 4 will be done in Python hopefully.
This version is again completely rewritten and the logic is completely different. I challenged to make this under 1000 lines long and I was never worried once of exceeding that. This one is built with functions and really modular compared to the other ones. It's a bit under 700 lines and has support for unlimited variables loaded from a .csv file. This one is already basically a full-blown application since it has so many features and isn't just copypaste.
- Unlimited question/answer pair support.
  - Sub answers are available from b to z. I'll explain this later in usage section.
- modes
  - normal
  - reverse
  - random
  - random reverse
  - multiple choice
  - random multiple choice
- seek function
- main menu
- settings menu
- modular approach
- experemental all time max streak

# Usage

## Installation (Works only for 3.2.1 and later)
Download the [latest release](https://github.com/LuuppiZ/lfg/releases) and make it an executable and move it to a bin file with the following commands for example.

Make it executable (Replace it with a real path to `lfg`)
```
chmod a+x /path/to/lfg
```
Move it to a local binary folder. In this example we use ~/.local/bin/ but you can use any other too. 
(Make sure to put the real path to `lfg`)
(Make sure that this folder exists and it's set to binary. If you don't know how just Google it. "How to set ~/.local/bin/ as binary path" or something like that)
```
mv /path/to/lfg ~/.local/bin/lfg
```
To check that it works open up a new terminal and type `lfg` it should open the application. If not it's likely that the folder you put it is not a binary folder. Do the "Move it to a local binary folder" step again.

## Import queston/answer pairs
You need to use the example file or make one yourself. To make one yourself you can use LibreOffice Calc for example.
### Some things you need to know before making a file
- Un-even rows are questions
- Even rows are answers
- For example put a question in cell A1 and the answer on A2. If you have multiple options for the answer put them to B2, C2 etc. up to Z2. It's the maximum. Answers beyond that aren't included.

How I like to do my files:
