#!/bin/bash

# Long awaited version 3 that is not 7 000 rows Long
# By Luuppi

# Static variables
read_ans="Answer: "
read_mode="Mode: "
max_question="20"
min_question="1"
variable_file="" #"$(ls *.csv)"
legacy_variable_import_path=""


# Legacy feature, not supported. Use custom version 2 of the program
# Import question variables
#. /question/variable/path/here

# Dynamic variables
question_number="1"
question_number_echo_enabled="1" # set to 1 to enable (can be set in settings)
question_number_echo="" # This is the same as question_number but can can be disabled if not wanted that it shows. Default is off. 
#It might be a good idea to throw this to somewhere where it resets every question, not sure though.
mode="random"

# Parse commas from questions
question_comma_parser() {
  question_current_inside="${question_current_inside//,/ }"
  question_current_inside="${question_current_inside%"${question_current_inside##*[![:space:]]}"}" # Remove spaces at the end
  declare "$question_current=$question_current_inside"
}

# Parse commas from answers
answer_comma_parser() {
  answer_current_inside="${answer_current_inside//,/ }"
  answer_current_inside="${answer_current_inside%"${answer_current_inside##*[![:space:]]}"}" # Remove spaces at the end
  declare "$answer_current=$answer_current_inside"
}

# This took hours to make but it's finally done and ready for anything as far as I know
import_variables() {
  echo "Loading variables to memory..."
  question_number=1
  answer_number=1

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
  question_number=1
  answer_number=1
}

next_question() {

  case "$mode" in
    normal|reverse)
      ((question_number += 1))
    ;;
    random|random_reverse)
      question_number=$(shuf -i $min_question-$max_question -n 1)
    ;;
    *)
    ;;
  esac
  
}

seek_function() {
  question_number=$input
  question_number=${question_number#seek} # Should remove the seek word from the variable

}

# Question loop
question_loop() {
  
  if [[ $question_number_echo_enabled = 1 ]]; then
    question_number_echo="$question_number."
  fi 

  temp="question"$question_number"a" # temp=question1
  question="${!temp}"

  temp="answer"$question_number"a"
  answer="${!temp}"

  echo "$question_number_echo $question"
  read -p "$read_ans" -r input

if [[ -z $input ]]; then
  clear
  echo "Wrong, try again"
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

  case "$input" in
    $answer) 
      echo "Correct"
      next_question
    ;;
    seek*) seek_function
    ;;
    correct|c)
      clear
      echo "The correct answer is $answer"
    ;;
    q)
      main_menu
    ;;
    *)clear
      echo "Wrong, try again"
    ;;
  esac
fi
}

question_loop_reverse() {
  
  if [[ $question_number_echo_enabled = 1 ]]; then
    question_number_echo="$question_number."
  fi 

  temp="answer"$question_number"a" # temp=answer1
  question="${!temp}"

  temp="question"$question_number"a"
  answer="${!temp}"

  echo "$question_number_echo $question"
  read -p "$read_ans" -r input

if [[ -z $input ]]; then
  clear
  echo "Wrong, try again"
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
 

  case "$input" in
    $answer) 
      echo "Correct"
      next_question
    ;;
    seek*) seek_function
    ;;
    correct|c)
      clear
      echo "The correct answer is $answer"
    ;;
    q)
      clear
      main_menu
    ;;
    *)clear
      echo "Wrong, try again"
    ;;
  esac
fi
}


sleep_between() {
  sleep .05
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
  echo "q to go back to main menu"
  echo ""
  read -p "Option: " -r input
  case "$input" in
    1)
      read -p "New min_question value: " -r min_question
      echo "min_question set to \"$min_question\""
      sleep 1
    ;;
    2)
      read -p "New max_question value: " -r max_question
      echo "max_question set to \"$max_question\""
      sleep 1
    ;;
    3)
      echo "0 to disable, 1 to enable"
      read -p "Value: " -r question_number_echo_enabled
      echo "question_number_echo_enabled set to \"$question_number_echo_enabled\""
      case "$question_number_echo_enabled" in
        1|0)
          echo "Value is ok"
        ;;
        *)
          echo "Invalid value, setting to off..."
          question_number_echo_enabled=0
        ;;
      esac
      sleep 3
    ;;
    q)
      clear
      break 
    ;;
    *) echo default
    ;;
  esac
  clear
done

}

# Main menu
main_menu() {
  echo "Welcome to the LFG 3.0!"
  sleep 1
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
    ;;
    2|reverse) 
      mode="reverse"
    ;;
    3|random)
      mode="random"
      question_number=$(shuf -i $min_question-$max_question -n 1)
    ;;
    4|"random reverse")
      mode="random_reverse"
      question_number=$(shuf -i $min_question-$max_question -n 1)
    ;;
    s|settings)
      clear
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
      main_menu
    ;;
  esac
  
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
    echo "    -i [your variable file]    Import .csv files (Supports up to "
    echo "                               5, just put them after each other)"
    echo "    -h & -help                 Prints this help command"
    echo "    ward                       Custom variable import path"
    exit 0
  ;;
  ward)
    variable_file="/home/luuppi/Documents/coding/practice games/jp/new/items.csv"
    max_variable_in_csv
    import_variables
  ;;
  -legacy)
    legacy_variable_import_path=$2
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



clear
main_menu # Mode is now set, proceeding to the wanted mode.
clear
# Game loop
while true; do

  case "$mode" in
    normal|random)
      question_loop
    ;;
    reverse|random_reverse)
      question_loop_reverse
    ;;
  esac

done

