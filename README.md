# Luuppi's Flipcard Game
Simple little flip card game template written in bash.
I was inspired to make a flip card game thanks to "[Nihongo Quest](https://store.steampowered.com/app/1556070/Nihongo_Quest/)".

# [New Python version here!](https://github.com/LuuppiZ/luupycards)
I wanted to make a new repository and start fresh.

# **NOTE!**
## Q&A
Q: Would I use this if I wasn't the developer?

A: No, I wouldn't trust a random shell script unless I've inspected it myself.

Q: Should you use this?

A: Nope, there are way better programs for the same use case and you are risking your safety unless you inspect this line by line. But honestly nobody does that.

Q: Why did you do this then?

A: Because I wanted?

## BUG!
DO NOT PUT COMMAS `,` TO THE QUESTIONS OR ANSWERS, IT WILL BREAK THE SPECIFIC QUESTION/ANSWER PAIR!!!


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
If you have any issues understanding how to use this application please make an issue.
THERE ARE VIDEO EXAMPLES OF SOME THINGS. Altough some knowledge is highly recommended.
## Installation (Works only for 3.2.1 and later)
[Video of installation process](https://youtu.be/Na5lgFgHLd0)

Download the [latest release](https://github.com/LuuppiZ/lfg/releases) and make it an executable and move it to a bin file with the following commands for example.

You can also rename it for easier access. I like to rename it to just `lfg` since then I can just write `lfg` to the terminal. That's the name I'll be referencing to it.

Make it executable (Replace it with a real path to `lfg`)
```
chmod a+x /path/to/lfg
```
Move it to a local binary folder. In this example we use ~/.local/bin/ but you can use any other too. 
(Make sure to put the real path to `lfg`)
(Make sure that this folder is set to binary path. If you don't know how just Google it. "How to set ~/.local/bin/ as binary path" or something like that)
```
mv /path/to/lfg ~/.local/bin/lfg
```
To check that it works open up a new terminal and type `lfg` it should open the application. If not it's likely that the folder you put it is not a binary folder. Do the "Move it to a local binary folder" step again.

## Import queston/answer pairs
Nothing is capital sensitive! The answer and user input is converted to lowercase when they are compared.

You need to use the example file or make one yourself. To make one yourself you can use LibreOffice Calc for example.
[Video example of doing that](https://youtu.be/zH3Lg1INpUI)
### Some things you need to know before making a file
- Un-even rows are questions
- Even rows are answers
- For example put a question in cell A1 and the answer on A2. If you have multiple options for the answer put them to B2, C2 etc. up to Z2. It's the maximum. Answers beyond that aren't included.
See the example.csv on every release that supports it.

How I like to do my files (example):
```
How long is the road?,,,
two hundred meters; 200 meters; 200m,two hundred meters,200 meters,200m
```
Here the first answer has every sing answer in one string. This is so that when you want to see the correct answer the application will show the first cell's answer only. This might be changed in a future version but I'll rewrite this if it happens.
## Importing
Please refer to `lfg -help`
Anyways here are the simple instructions:
`lfg` This tries to import every single .csv file from the current working directory.
`lfg -legacy [variable files]` this is completely useless and should never be used. Funniest thing is that it's not even compatible with the legacy variables but uses a bit different way compared to lfg2. (Supports up to 5 files)
`lfg -i [variable files]` This is the proper import method. Just put the files after -i separated by a space.
`lfg example` This is a hardcoded example path and it's located alongside the datafile at `~/.cache/luuppiflipcard/example.csv` The file has to be added manually though. Just download the example.csv from release page.

## "Gameplay" if you can call it such
- Type the correct answer
- If an answer is the same as one of these they don't work. For example in multiple choice if the correct answer is `c` it will not say the correct answer, it will say that you chose the correct option.
- `c` or `correct` for the correct answer.
- `q` or `quit` for going back to main menu.
- `seek[sumber]` for seeking to that question. Don't put a space between seek and the number!
- In multiple choice you can type the answer or the letter.

## Settings
There are minimal checks for if a setting value is valid!
Invalid values may break the game!

# Licensing

- Files explicitly marked as being under the GNU General Public License version 2 (GPLv2) are covered by that license. See the `LICENSE` file for details.
- All other files, including non-code files (e.g., `.csv` and documentation), are released into the public domain and may be freely used, copied, modified, or redistributed without restriction.

