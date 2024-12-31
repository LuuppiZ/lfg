#!/bin/bash
# SPDX-License-Identifier: GPL-2.0-only

# Change the path to your liking (Please use the same format: no slash at the end although it's a folder)
savefile_path="/home/$USER/.cache/luuppiflipcard"

# This could maybe be changed with zenity but I'm not sure how to save this for next time.
# Maybe tamper the script? (This feature is experemental and will always be in version 3)

# Making sure that file exists
if [[ -s "$savefile_location" ]]; then
  datafile_exists=1
else
  mkdir -p $savefile_path/
  echo "max_streak_all_time=0" > $savefile_location
fi
# Gamemode: Survive!
# In this if you fail n times you lose.
# In relax difficulty it's 10 times
# In easy difficulty it's 5 times
# In hard difficulty it's 3 times
# In insane difficulty it's 1 time

# Long awaited version 3 that is not 7 000 rows Long
# By Luuppi

# Static variables
read_ans="Answer: "
read_mode="Mode: "
max_question="Default is set during import_variables"
min_question="1"
variable_file="" #"$(ls *.csv)"
max_question_to_take_options_from="this is set at import_variables"
empty_echo="Please type something..."
game_version="LFG-3.2"
savefile_location="$savefile_path/data"

# Dynamic variables
question_number="1"
question_number_echo_enabled="1" # set to 1 to enable (can be set in settings)
question_number_echo="" # This is the same as question_number but can can be disabled if not wanted that it shows. Default is off. 
#It might be a good idea to throw this to somewhere where it resets every question, not sure though.
mode="random"
max_options=5 # can be customized in settings menu
current_option_number=0
max_streak_all_time=0 # It's time to have a save file.
current_streak=0
first_load=1
question_number=1
answer_number=1

now_playing() {
  echo "Now playing: $mode"
}

save_all_time_streak() {
  if [[ $1 -gt $max_streak_all_time ]]; then
    max_streak_all_time=$1
    sed -i "s/max_streak_all_time=.*/max_streak_all_time=$1/g" $savefile_location
  fi
}

streak_add() {
  ((current_streak += 1))
  save_all_time_streak $current_streak
}
streak_break() {
  current_streak=0
}

streak_show() {
  echo "Current streak: $current_streak      All time best streak: $max_streak_all_time"
}

check_if_mode_is_multiple_choice() {
  case "$mode" in
    multiple_choice|random_multiple_choice) break
    ;;
  esac
}

answer_check() {
    case "$input" in
    "")
      clear
      echo "$empty_echo"
    ;;
    $answer) clear
      check_if_mode_is_multiple_choice
      echo "Correct"
      streak_add
      next_question
    ;;
    seek*) clear
      check_if_mode_is_multiple_choice
      seek_function
    ;;
    correct|c)
      streak_break
      clear
      correct_answer
    ;;
    q|quit)
      #streak_break
      clear
      main_menu
    ;;
    *)clear
      streak_break
      echo "Wrong, try again"
    ;;
  esac
}

correct_answer() {
  case "$mode" in
    multiple_choice|random_multiple_choice)
    echo "The correct answer is ${!answer}"
    ;;
    *)
      echo "The correct answer is $answer"
    ;;
  esac
}

# Parse commas from questions
question_comma_parser() {
  question_current_inside="${question_current_inside//,/ }" # Changes commas to spaces
  question_current_inside="${question_current_inside%"${question_current_inside##*[![:space:]]}"}" # Remove spaces at the end
  declare "$question_current=$question_current_inside"
}

# Parse commas from answers
answer_comma_parser() {
  answer_current_inside="${answer_current_inside//,/ }" # Changes commas to spaces
  answer_current_inside="${answer_current_inside%"${answer_current_inside##*[![:space:]]}"}" # Remove spaces at the end
  declare "$answer_current=$answer_current_inside"
}

# This took hours to make but it's finally done and ready for anything as far as I know
import_variables() {
  echo "Loading variables to memory..."
  # Questions
  for ((i=1; i<=$max_question_import; i+=2))
  do
    question_current="question$question_number" # question_current=question1
    question_current_inside=$(sed -n "$i"p "$variable_file") # question_current_inside=question1,,
    declare "$question_current=$question_current_inside" # question1=question1,,

    # Check if the line is empty and break the loop if so
    if [[ -z $question_current_inside ]]; then
      break
    fi

    echo "current question: $question_current" # question1
    echo "what's inside it: $question_current_inside" # Debugging

    IFS=',' read -ra parts <<< "$question_current_inside" # parts=question1,,

    for j in {a..z}; do

      sub_question_current="$question_current$j" # sub_question_current=question1a

      part_index=$(( $(printf "%d" "'$j") - 97 )) # Get ASCII value of j and subtract 97
      sub_question_current_inside="${parts[$part_index]:-}" # sub_question_current_inside=question1
      eval "$sub_question_current=\"$sub_question_current_inside\""

      if [[ -z $sub_question_current_inside ]]; then
        break
      fi

      echo "current sub question: $sub_question_current" # question1a
      echo "what's inside it: $sub_question_current_inside" #

    done
      echo "inside $question_current before: $question_current_inside" # question1,,
      question_comma_parser
      echo "inside $question_current after: $question_current_inside" # question1
      ((question_number += 1)) # question_number=2
  done

  echo ""

  # Answers
  for ((i=2; i<=$max_question_import; i+=2))
  do
    answer_current="answer$answer_number" # answer_current=answer1
    answer_current_inside=$(sed -n "$i"p "$variable_file") # answer_current_inside=answer1,,
    declare "$answer_current=$answer_current_inside" # answer1=answer1,,

    # Check if the line is empty and break the loop if so
    if [[ -z $answer_current_inside ]]; then
      break
    fi

    echo "current answer: $answer_current" # answer1
    echo "what's inside it: $answer_current_inside" # Debugging

    IFS=',' read -ra parts <<< "$answer_current_inside" # parts=answer1,,

    for j in {a..z}; do

      sub_answer_current="$answer_current$j" # sub_answer_current=answer1a

      part_index=$(( $(printf "%d" "'$j") - 97 )) # Get ASCII value of j and subtract 97
      sub_answer_current_inside="${parts[$part_index]:-}" # sub_answer_current_inside=question1
      eval "$sub_answer_current=\"$sub_answer_current_inside\""

      if [[ -z $sub_answer_current_inside ]]; then
        break
      fi

      echo "current sub answer: $sub_answer_current" # answer1a
      echo "what's inside it: $sub_answer_current_inside" #

    done

    echo "inside $answer_current before: $answer_current_inside"
    answer_comma_parser
    echo "inside $answer_current after: $answer_current_inside"
    ((answer_number += 1)) # answer_number=2
  done

  max_question_to_take_options_from=$question_number
  ((max_question_to_take_options_from -= 1))
  max_question=$question_number
  ((max_question -= 1))
}

next_question() {
  case "$mode" in
    normal|reverse|multiple_choice)
      ((question_number += 1))
    ;;
    random|random_reverse|random_multiple_choice)
      question_number=$(shuf -i $min_question-$max_question -n 1)
    ;;
    *)
      echo "error, incorrect mode"
      sleep 10
    ;;
  esac
}

seek_function() {
  question_number=$input
  question_number=${question_number#seek} # Should remove the seek word from the variable
}

# Question loop
question_loop() {
  
  if [[ "$question_number_echo_enabled" -eq 1 ]]; then
    question_number_echo="${question_number}."
  fi 

  temp="question"$question_number"a" # temp=question1
  question="${!temp}"

  temp="answer"$question_number"a"
  answer="${!temp}"

  echo "$question_number_echo $question"
  read -p "$read_ans" -r input

if [[ -z $input ]]; then
  clear
  echo "$empty_echo"
else
  input=${input,,} # Sets everything to lowercase
  for i in {a..z}; do
    temp="answer$question_number$i" # question14a
    temp="${!temp}" # I
    if [[ -z $temp ]]; then
      break
    fi
    temp=${temp,,} # i
    if [[ $temp = $input ]]; then # if i is i
      input=$answer # input=I
      break 
    fi
  done
  
  answer_check

fi
}

question_loop_reverse() {
  
  if [[ "$question_number_echo_enabled" -eq 1 ]]; then
    question_number_echo="${question_number}."
  fi 

  temp="answer"$question_number"a" # temp=answer1
  question="${!temp}"

  temp="question"$question_number"a"
  answer="${!temp}"

  echo "$question_number_echo $question"
  read -p "$read_ans" -r input

if [[ -z $input ]]; then
  clear
  echo "$empty_echo"
else
  input=${input,,} # Sets everything to lowercase
  for i in {a..z}; do
    temp="question$question_number$i" # question14a
    temp="${!temp}" # I
    if [[ -z $temp ]]; then
      break
    fi
    temp=${temp,,} # i
    if [[ $temp = $input ]]; then # if i is i
      input=$question # input=I
      break 
    fi
  done

  answer_check

fi
}

multiple_choice_loop() {

  if [[ "$question_number_echo_enabled" -eq 1 ]]; then
    question_number_echo="${question_number}."
  fi

answer="answer"$question_number"a" # answer1a

# Manually include the answer for the current question
selected_answers=("answer${question_number}a")

# Generate unique random numbers excluding the current question number
random_numbers=($(shuf -i 1-$max_question_to_take_options_from -n $max_options | grep -v "^$question_number$"))

if [ ${#random_numbers[@]} -gt $(($max_options - 1)) ]; then
    # Remove the last element
    random_numbers=("${random_numbers[@]:0:$((${#random_numbers[@]} - 1))}")
fi

# Add the random answers to the selected_answers array
for num in "${random_numbers[@]}"; do
  selected_answers+=("answer${num}a")
done

# Shuffle the selected answers so that answer${question_number}a isn't always first
shuffled_answers=($(shuf -e "${selected_answers[@]}"))

    while true; do  

current_option_number=0
temp="question"$question_number"a" # temp=question1a
question="${!temp}" # question=How hot is the pizza?
echo "$question_number_echo $question" # 1. How hot is the pizza?
echo ""

for letter in {a..z}; do
  if [[ $current_option_number -eq $max_options ]]; then
    break
  fi
  current_option_insides=${shuffled_answers[$current_option_number]} # current_option_insides=answer[random number]a
  echo "$letter. ${!current_option_insides}" # a. 30 degrees

  if [[ $current_option_insides = $answer ]]; then
    saved_answer=$letter
  fi
  ((current_option_number += 1))
done
echo ""
read -p "$read_ans" -r input # can be either a letter or the insides
input=${input,,} # c

if [[ -z $input ]]; then
  clear
  echo "$empty_echo"
elif [[ "$input" =~ ^[a-z]$ ]]; then
  if [[ $input = $saved_answer ]]; then
    input=$answer
  fi
else
  input=${input,,} # Sets everything to lowercase
  for i in {a..z}; do
    temp="answer$question_number$i" # question14a
    temp="${!temp}" # I
    if [[ -z $temp ]]; then
      break
    fi
    temp=${temp,,} # i
    if [[ $temp = $input ]]; then # if i is i
      input=$answer # input=I
      break 
    fi
  done
fi
  answer_check
done
}

sleep_between() {
  if [[ $first_load = 1 ]]; then
    sleep .05
  fi
if [[ $first_load = 1 && $1 != "" ]]; then
  sleep $1
fi
}

# Settings menu
settings_menu() {
while true; do  
  echo "Settings menu"
  echo ""
  echo "1 for min_question"
  echo "Current: $min_question"
  echo ""
  echo "2 for max_question"
  echo "Current: $max_question"
  echo ""
  echo "3 for question_number_echo"
  echo "Current: $question_number_echo_enabled"
  echo ""
  echo "4 for max_options (for multiple choice)"
  echo "Current: $max_options"
  echo ""
  echo "\"reset streak\" for reseting all time streak"
  echo "Current max streak: $max_streak_all_time"
  echo ""
  echo "q to go back to main menu"
  echo ""
  read -p "Option: " -r input
  input=${input,,}
  case "$input" in
    1)
      temp=$min_question
      read -p "New min_question value: " -r min_question
      echo "min_question set to \"$min_question\""
      #if [[ $min_question -gt $max_question ]]; then
      #  echo "Error, can't set thee value higher than maximum."
      #  echo "Reverting..."
      #  min_question=$temp
      #  sleep 2
      #fi
      sleep 1
    ;;
    2)
      temp=$max_question
      read -p "New max_question value: " -r max_question
      echo "max_question set to \"$max_question\""
      #if [[ $max_question -lt $min_question ]]; then
      #  echo "Error, can't set the value lower than minimum."
      #  echo "Reverting..."
      #  max_question=$temp
      #  sleep 2
      #fi
      sleep 1
    ;;
    3)
      echo "0 to disable, 1 to enable"
      read -p "Value: " -r question_number_echo_enabled
      echo "question_number_echo_enabled set to \"$question_number_echo_enabled\""
      case "$question_number_echo_enabled" in
        1|0)
          echo "Value is ok"
          question_number_echo=""
        ;;
        *)
          echo "Invalid value, setting to off..."
          question_number_echo_enabled="0"
          question_number_echo=""
        ;;
      esac
      sleep 3
    ;;
    4)
      temp=$max_options
      echo "Please put this value at something between 2 to 26 and less than the max amount of questions you have."
      read -p "New max_options value: " -r max_options
      if [[ $max_options -lt 2 ]]; then
        echo "Incorrect value, reverting..."
        max_options=$temp
      elif [[ $max_options -gt 26 ]]; then
        echo "Incorrect value, reverting..."
        max_options=$temp
      fi
      echo "max_options set to \"$max_options\""
      sleep 1
    ;;
    "reset streak")
      echo "Are you sure you want to reset your all time streak of $save_all_time_streak?"
      read -p "[yes/no]: " -r input
      input=${input,,}
      case "$input" in
        yes)
          echo "Resetting in"
          echo "5"
          sleep 1
          echo "4"
          sleep 1
          echo "3"
          sleep 1
          echo "2"
          sleep 1
          echo "1"
          sleep 1
          echo "All time streak reseted."
          max_streak_all_time=0
          sed -i "s/max_streak_all_time=.*/max_streak_all_time=0/g" $savefile_location
          sleep 5
        ;;
        no)
          echo "Reverting, nothing changed."
          sleep 3
        ;;
        *)
          echo "Invalid input, nothing changed."
          sleep 5
        ;;
      esac 
    ;;
    q)
      clear
      break 
    ;;
    *)
      echo "Invalid option"
      sleep 3
    ;;
  esac
  clear
done
}

reset_question_numbers() {
  question_number="1"
  question_number_echo="1"
}

# Main menu
main_menu() {
  echo "Welcome to the Luuppi's Flip Card Game $game_version!"
  sleep_between 1
  echo ""
  sleep_between
  echo "1 for normal mode"
  sleep_between
  echo "2 for reverse mode"
  sleep_between
  echo "3 for random mode"
  sleep_between
  echo "4 for random reverse mode"
  sleep_between
  echo "5 for multiple choice mode"
  sleep_between
  echo "6 for random multiple choice mode"
  sleep_between
  echo ""
  sleep_between
  echo "s for settings"
  echo "q to quit"
  sleep_between
  echo ""
  sleep_between
  read -p "$read_mode" -r input

  case "$input" in
    1|normal)
      mode="normal"
      reset_question_numbers
      now_playing
    ;;
    2|reverse) 
      mode="reverse"
      reset_question_numbers
      now_playing
    ;;
    3|random)
      mode="random"
      question_number=$(shuf -i $min_question-$max_question -n 1)
      now_playing
    ;;
    4|"random reverse")
      mode="random_reverse"
      question_number=$(shuf -i $min_question-$max_question -n 1)
      now_playing
    ;;
    5|"multiple choice")
      mode="multiple_choice"
      reset_question_numbers
      now_playing
    ;;
    6|"random multiple choice")
      mode="random_multiple_choice"
      question_number=$(shuf -i $min_question-$max_question -n 1)
      now_playing
    ;;
    s|settings)
      clear
      first_load=0
      settings_menu
      clear
      main_menu # Returns to main_menu after settings are set
    ;;
    q|quit)
      echo "Exiting..."
      exit 0
    ;;
    *)
      clear
      echo "Incorrect input, try again."
      first_load=0
      main_menu
    ;;
  esac
  clear
}

max_variable_in_csv() {
  max_question_import=$(wc -l < "$variable_file") # Import limit for questions/answers, this sets it to unlimited
  if [[ -z $max_question_import ]]; then
    max_question_import=1000
  fi
}

case "$1" in
  -h|-help)
    echo "    -legacy [your path]        Use legacy import method. (Aka. "
    echo "                               load variables from bash file)"
    echo "                               Supports up to 5 files."
    echo "                               Note that this isn't exactly the as"
    echo "                               before. a is the fist variable so"
    echo "                               instead of question1 use question1a"
    echo "    -i [your variable file]    Import .csv files (Supports up to "
    echo "                               5, just put them after each other)"
    echo "    -h & -help                 Prints this help command"
    echo "    example                    Custom hard-coded import path"
    exit 0
  ;;
  example)
    variable_file="$savefile_location/example.csv"
    if [[ -s "$variable_file" ]]; then
      echo "It exists!"
    else
      echo "Error, example file doesn't exist. Please add it. (Refer to README)"
      exit
    fi
    max_variable_in_csv
    import_variables
  ;;
  -legacy)
    for i in "$2" "$3" "$4" "$5" "$6"; do
      . "$i"
    done
  ;;
  -i)
    for variable_file in "$2" "$3" "$4" "$5" "$6"; do
      if [[ -z $variable_file ]]; then
        break
      fi
      max_variable_in_csv
      import_variables
    done
  ;;
  *)
    variable_file=
    variable_file_array=(*.csv)
    for variable_file in "${variable_file_array[@]}"; do
      echo "Importing variables from $variable_file"
      max_variable_in_csv
      import_variables
      echo "proceeding to next..."
    done
  ;;
esac

if [[ $datafile_exists = "1" ]]; then
  echo "Datafile exists!"
else
  echo "Wasn't able to create data file for some reason. All time max streak isn't saved."
  sleep 5
fi

max_streak_all_time=$(cat $savefile_location | grep "max_streak_all_time=" | sed "s/max_streak_all_time=//g")
echo "max_streak_all_time: $max_streak_all_time"
question_number=1
answer_number=1

clear
echo "Loaded \"$max_question\" question/answer pairs."
main_menu # Mode is now set, proceeding to the wanted mode.
first_load=0
now_playing
streak_show
# Game loop
while true; do

  case "$mode" in
    normal|random)
      question_loop
    ;;
    reverse|random_reverse)
      question_loop_reverse
    ;;
    multiple_choice|random_multiple_choice)
      multiple_choice_loop
    ;;
  esac

  streak_show

done

