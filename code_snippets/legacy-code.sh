#!/bin/bash

# question/answer import code for legacy variable saving

# Parse commas from questions
question_comma_parser() {
  question_current_inside="${question_current_inside//,/ }"
  question_current_inside="${question_current_inside%"${question_current_inside##*[![:space:]]}"}" # Remove spaces at the end
  question_current=$question_current_inside
}

# Parse commas from answers
answer_comma_parser() {
  answer_current_inside="${answer_current_inside//,/ }"
  answer_current_inside="${answer_current_inside%"${answer_current_inside##*[![:space:]]}"}" # Remove spaces at the end
  answer_current=$answer_current_inside
}

# This took hours to make but it's finally done and ready for anything as far as I know
variable_import() {
question_number=1
answer_number=1

# Questions
for ((i=1; i<=$max_question; i+=2))
do

  question_current="question$question_number" # question_current=question1
  question_current_inside=$(sed -n "$i"p $variable_file) # question_current_inside=question1,,
  declare "$question_current=$question_current_inside" # question1=question1,,

  # Check if the line is empty and break the loop if so
  if [[ -z $question_current_inside ]]; then
    break
  fi

  #echo "current question: $question_current" # question1
  #echo "what's inside it: $question_current_inside" # Debugging

  IFS=',' read -ra parts <<< "$question_current_inside" # parts=question1,,

    for j in {a..z}; do

    sub_question_current="$question_current$j" # sub_question_current=question1a

    part_index=$(( $(printf "%d" "'$j") - 97 )) # Get ASCII value of j and subtract 97
    sub_question_current_inside="${parts[$part_index]:-}" # sub_question_current_inside=question1
    eval "$sub_question_current=\"$sub_question_current_inside\""

    if [[ -z $sub_question_current_inside ]]; then
      break
    fi

    #echo "current sub question: $sub_question_current" # question1a
    #echo "what's inside it: $sub_question_current_inside" #

    done
    echo "$question_current_inside" # question1,,
    question_comma_parser
    echo "$question_current_inside" # question1
    ((question_number += 1)) # question_number=2
done

echo ""

# Answers
for ((i=2; i<=$max_question; i+=2))
do

  answer_current="answer$answer_number" # answer_current=answer1
  answer_current_inside=$(sed -n "$i"p $variable_file) # answer_current_inside=answer1,,
  declare "$answer_current=$answer_current_inside" # answer1=answer1,,

  # Check if the line is empty and break the loop if so
  if [[ -z $answer_current_inside ]]; then
    break
  fi

  #echo "current answer: $answer_current" # answer1
  #echo "what's inside it: $answer_current_inside" # Debugging

  IFS=',' read -ra parts <<< "$answer_current_inside" # parts=answer1,,

    for j in {a..z}; do

    sub_answer_current="$answer_current$j" # sub_answer_current=answer1a

    part_index=$(( $(printf "%d" "'$j") - 97 )) # Get ASCII value of j and subtract 97
    sub_answer_current_inside="${parts[$part_index]:-}" # sub_answer_current_inside=question1
    eval "$sub_answer_current=\"$sub_answer_current_inside\""

    if [[ -z $sub_answer_current_inside ]]; then
      break
    fi

    #echo "current sub answer: $sub_answer_current" # answer1a
    #echo "what's inside it: $sub_answer_current_inside" #

    done

  echo "$answer_current_inside"
  answer_comma_parser
  echo "$answer_current_inside"
  ((answer_number += 1)) # answer_number=2
done


}
