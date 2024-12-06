#!/bin/bash

# Long awaited version 3 that is not 7 000 rows Long
# By Luuppi

# Static variables
read_ans="Answer: "
read_mode="Mode: "
max_question="20"
min_question="1"
variable_file="items.csv"
max_question_import=$(wc -l < "$variable_file") # Import limit for questions/answers, this sets it to unlimited
legacy_variable_import_path=""


# Legacy feature, not supported. Use custom version 2 of the program
# Import question variables
#. /question/variable/path/here

# Dynamic variables
question_number="1"
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
    question_current_inside=$(sed -n "$i"p $variable_file) # question_current_inside=question1,,
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
    answer_current_inside=$(sed -n "$i"p $variable_file) # answer_current_inside=answer1,,
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
    temp="answer$question_number$i"
    temp="${!temp}"
    if [[ $temp = $input ]]; then
      answer=$temp
      break 
    fi
  done
  answer=${answer,,}  

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
    temp="question$question_number$i"
    temp="${!temp}"
    if [[ $temp = $input ]]; then
      answer=$temp
      break 
    fi
  done
  answer=${answer,,}  

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
    *)
      clear
      echo "Incorrect input, try again."
      main_menu
    ;;
  esac
  
}

if [[ -z $1 ]]; then
  import_variables
  elif [[ $1 = "-legacy" ]]; then
    legacy_variable_import_path=$2
fi
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

