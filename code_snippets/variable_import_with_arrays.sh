#!/bin/bash

# Initialize arrays
questions=()
answers=()

import_variables() {

  # Questions loop
  for ((i=1; i<=$max_question; i+=2)); do
    # Read the question line
    question_current=$(sed -n "${i}p" "$variable_file") # question_current=question1,,

    # Break if the line is empty
    if [[ -z $question_current ]]; then
      break
    fi

    # Split the line into parts and store in an array
    IFS=',' read -ra question_parts <<< "$question_current"

    # Store the question parts in the `questions` array
    questions+=("${question_parts[@]}")

    echo "Question $((i/2+1)): ${question_parts[0]}"
    for ((j=1; j<${#question_parts[@]}; j++)); do
      echo "  Sub-question ${j}: ${question_parts[j]}"
    done
  done

  # Answers loop
  for ((i=2; i<=$max_question; i+=2)); do
    # Read the answer line
    answer_current=$(sed -n "${i}p" "$variable_file")

    # Break if the line is empty
    if [[ -z $answer_current ]]; then
      break
    fi

    # Split the line into parts and store in an array
    IFS=',' read -ra answer_parts <<< "$answer_current"

    # Store the answer parts in the `answers` array
    answers+=("${answer_parts[@]}")

    echo "Answer $((i/2)): ${answer_parts[0]}"
    for ((j=1; j<${#answer_parts[@]}; j++)); do
      echo "  Sub-answer ${j}: ${answer_parts[j]}"
    done
  done
}
