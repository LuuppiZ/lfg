#! /bin/bash
# SPDX-License-Identifier: GPL-2.0-only

#This is a simple flip card game
#By Luuppi
#Can be referenced by "LFG-2.5-beta"
#This is just a template
#You can put your own questions and answers under there
#(The lines around 50-250)

#todo:
#settings show current values
#non repeating random
#setting for removing numbers from questions
#multiple answer mode
    #use 4 other random answers from variables, randomize the order and give the options a number. Should follow the max variable.

#done
#be able to assign at least two answers

#input variable just in case
#used in the settings menu
input="none"

#mode variable
mode="none"

#set question number variable
((q=1))

#set user's answer variable
ans="null"

#used for random mode
#specifies the max numbered question allowed
((max=30))

#set question variables
question1=""
    question1a=""
    question1b=""
question2=""
    question2a=""
    question2b=""
question3=""
    question3a=""
    question3b=""
question4=""
    question4a=""
    question4b=""
question5=""
    question5a=""
    question5b=""
question6=""
    question6a=""
    question6b=""
question7=""
    question7a=""
    question7b=""
question8=""
    question8a=""
    question8b=""
question9=""
    question9a=""
    question9b=""
question10=""
    question10a=""
    question10b=""

#over 10 is usually not needed but is here for convenience
question11=""
    question11a=""
    question11b=""
question12=""
    question12a=""
    question12b=""
question13=""
    question13a=""
    question13b=""
question14=""
    question14a=""
    question14b=""
question15=""
    question15a=""
    question15b=""
question16=""
    question16a=""
    question16b=""
question17=""
    question17a=""
    question17b=""
question18=""
    question18a=""
    question18b=""
question19=""
    question19a=""
    question19b=""
question20=""
    question20a=""
    question20b=""

#just in case
question21=""
    question21a=""
    question21b=""
question22=""
    question22a=""
    question22b=""
question23=""
    question23a=""
    question23b=""
question24=""
    question24a=""
    question24b=""
question25=""
    question25a=""
    question25b=""
question26=""
    question26a=""
    question26b=""
question27=""
    question27a=""
    question27b=""
question28=""
    question28a=""
    question28b=""
question29=""
    question29a=""
    question29b=""
question30=""
    question30a=""
    question30b=""


#set answer variables

answer1=""
    answer1a=""
    answer1b=""
answer2=""
    answer2a=""
    answer2b=""
answer3=""
    answer3a=""
    answer3b=""
answer4=""
    answer4a=""
    answer4b=""
answer5=""
    answer5a=""
    answer5b=""
answer6=""
    answer6a=""
    answer6b=""
answer7=""
    answer7a=""
    answer7b=""
answer8=""
    answer8a=""
    answer8b=""
answer9=""
    answer9a=""
    answer9b=""
answer10=""
    answer10a=""
    answer10b=""

answer11=""
    answer11a=""
    answer11b=""
answer12=""
    answer12a=""
    answer12b=""
answer13=""
    answer13a=""
    answer13b=""
answer14=""
    answer14a=""
    answer14b=""
answer15=""
    answer15a=""
    answer15b=""
answer16=""
    answer16a=""
    answer16b=""
answer17=""
    answer17a=""
    answer17b=""
answer18=""
    answer18a=""
    answer18b=""
answer19=""
    answer19a=""
    answer19b=""
answer20=""
    answer20a=""
    answer20b=""

answer21=""
    answer21a=""
    answer21b=""
answer22=""
    answer22a=""
    answer22b=""
answer23=""
    answer23a=""
    answer23b=""
answer24=""
    answer24a=""
    answer24b=""
answer25=""
    answer25a=""
    answer25b=""
answer26=""
    answer26a=""
    answer26b=""
answer27=""
    answer27a=""
    answer27b=""
answer28=""
    answer28a=""
    answer28b=""
answer29=""
    answer29a=""
    answer29b=""
answer30=""
    answer30a=""
    answer30b=""




#main loop
while true; do

#welcome loop
while true;
do

#reset all the values
#does not include $max because it's user-defined
input="none"
mode="none"
((q=1))
ans="null"


#ask user what way it wants the questions
#this should work the other way too
#question -> answer
#answer -> question
echo
echo "Welcome to Luuppi's Flipcard Game!"
echo
echo "1 for normal"
echo "2 for reverse"
echo "3 for random"
echo "4 for reverse random"
echo
echo "s for settings"
echo
read -p "Input: " mode
echo

case $mode in

    1|n|normal)
    mode=normal
    echo "Normal mode selected"
    break
    ;;

    2|re|reverse)
    mode=reverse
    echo "Reverse mode selected"
    break
    ;;

    3|r|ra|random)
    mode=random
    echo "Random mode selected"
    q=$((1 + $RANDOM % "$max"))
    break
    ;;

    4|rr|"reverse random")
    mode="reverse-random"
    echo "Reverse random mode selected"
    q=$((1 + $RANDOM % "$max"))
    break
    ;;

    s|settings)
    mode=settings
    echo "Going to settings..."
    break
    ;;

    *)
    echo "Invalid option, try again."
    ;;
esac

done



echo
echo
echo
echo
echo


#Settings go here
while [ $mode = "settings" ]
do
echo
echo
echo "Settings menu"
echo
echo "1 for inputting max random value"
echo
echo "q to return back to main menu"
echo

read -p "Input: " input

case $input in

    1|r|ra|random)
    echo
    echo "Enter a value 1-30"
    read -p "Value: " max
    echo

    if [[ $max -gt 30 ]]; then
    echo
    echo "Error, 30 is the max value"
    sleep 1
    echo "Setting value to 30..."
    ((max=30))
    sleep 1
    fi
    echo "Value set to" $max
    ;;

    q|x|quit|exit)
    echo "Going back to main menu..."
    break
    ;;

    *)
    echo
    echo "Incorrect input, try again."
    ;;

esac

done







#normal mode loop
while [ $mode = "normal" ]
do


#per question while loop
while [ $q = 1 ]
do

echo 1. $question1
echo
read -p "Answer: " ans

case $ans in

    $answer1|$answer1a|$answer1b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer1
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 2 ]
do

echo 2. $question2
echo
read -p "Answer: " ans

case $ans in

    $answer2|$answer2a|$answer2b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer2
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 3 ]
do

echo 3. $question3
echo
read -p "Answer: " ans

case $ans in

    $answer3|$answer3a|$answer3b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer3
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 4 ]
do

echo 4. $question4
echo
read -p "Answer: " ans

case $ans in

    $answer4|$answer4a|$answer4b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer4
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 5 ]
do

echo 5. $question5
echo
read -p "Answer: " ans

case $ans in

    $answer5|$answer5a|$answer5b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer5
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 6 ]
do

echo 6. $question6
echo
read -p "Answer: " ans

case $ans in

    $answer6|$answer6a|$answer6b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer6
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 7 ]
do

echo 7. $question7
echo
read -p "Answer: " ans

case $ans in

    $answer7|$answer7a|$answer7b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer7
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 8 ]
do

echo 8. $question8
echo
read -p "Answer: " ans

case $ans in

    $answer8|$answer8a|$answer8b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer8
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 9 ]
do

echo 9. $question9
echo
read -p "Answer: " ans

case $ans in

    $answer9|$answer9a|$answer9b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer9
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 10 ]
do

echo 10. $question10
echo
read -p "Answer: " ans

case $ans in

    $answer10|$answer10a|$answer10b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer10
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 11 ]
do

echo 11. $question11
echo
read -p "Answer: " ans

case $ans in

    $answer11|$answer11a|$answer11b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer11
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 12 ]
do

echo 12. $question12
echo
read -p "Answer: " ans

case $ans in

    $answer12|$answer12a|$answer12b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer12
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 13 ]
do

echo 13. $question13
echo
read -p "Answer: " ans

case $ans in

    $answer13|$answer13a|$answer13b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer13
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 14 ]
do

echo 14. $question14
echo
read -p "Answer: " ans

case $ans in

    $answer14|$answer14a|$answer14b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer14
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 15 ]
do

echo 15. $question15
echo
read -p "Answer: " ans

case $ans in

    $answer15|$answer15a|$answer15b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer15
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 16 ]
do

echo 16. $question16
echo
read -p "Answer: " ans

case $ans in

    $answer16|$answer16a|$answer16b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer16
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 17 ]
do

echo 17. $question17
echo
read -p "Answer: " ans

case $ans in

    $answer17|$answer17a|$answer17b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer17
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 18 ]
do

echo 18. $question18
echo
read -p "Answer: " ans

case $ans in

    $answer18|$answer18a|$answer18b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer18
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 19 ]
do

echo 19. $question19
echo
read -p "Answer: " ans

case $ans in

    $answer19|$answer19a|$answer19b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer19
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 20 ]
do

echo 20. $question20
echo
read -p "Answer: " ans

case $ans in

    $answer20|$answer20a|$answer20b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer20
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 21 ]
do

echo 21. $question21
echo
read -p "Answer: " ans

case $ans in

    $answer21|$answer21a|$answer21b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer21
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 22 ]
do

echo 22. $question22
echo
read -p "Answer: " ans

case $ans in

    $answer22|$answer22a|$answer22b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer22
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 23 ]
do

echo 23. $question23
echo
read -p "Answer: " ans

case $ans in

    $answer23|$answer23a|$answer23b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer23
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 24 ]
do

echo 24. $question24
echo
read -p "Answer: " ans

case $ans in

    $answer24|$answer24a|$answer24b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer24
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 25 ]
do

echo 25. $question25
echo
read -p "Answer: " ans

case $ans in

    $answer25|$answer25a|$answer25b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer25
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 26 ]
do

echo 26. $question26
echo
read -p "Answer: " ans

case $ans in

    $answer26|$answer26a|$answer26b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer26
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 27 ]
do

echo 27. $question27
echo
read -p "Answer: " ans

case $ans in

    $answer27|$answer27a|$answer27b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer27
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 28 ]
do

echo 28. $question28
echo
read -p "Answer: " ans

case $ans in

    $answer28|$answer28a|$answer28b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer28
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 29 ]
do

echo 29. $question29
echo
read -p "Answer: " ans

case $ans in

    $answer29|$answer29a|$answer29b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer29
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 30 ]
do

echo 30. $question30
echo
read -p "Answer: " ans

case $ans in

    $answer30|$answer30a|$answer30b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer30
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#(( q=1 ))

done
#normal mode loop end







































#reverse mode loop
while [ $mode = "reverse" ]
do


#per question while loop
while [ $q = 1 ]
do

echo 1. $answer1
echo
read -p "Answer: " ans

case $ans in

    $question1|$question1a|$question1b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question1
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 2 ]
do

echo 2. $answer2
echo
read -p "Answer: " ans

case $ans in

    $question2|$question2a|$question2b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question2
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 3 ]
do

echo 3. $answer3
echo
read -p "Answer: " ans

case $ans in

    $question3|$question3a|$question3b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question3
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 4 ]
do

echo 4. $answer4
echo
read -p "Answer: " ans

case $ans in

    $question4|$question4a|$question4b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question4
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 5 ]
do

echo 5. $answer5
echo
read -p "Answer: " ans

case $ans in

    $question5|$question5a|$question5b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question5
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 6 ]
do

echo 6. $answer6
echo
read -p "Answer: " ans

case $ans in

    $question6|$question6a|$question6b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question6
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 7 ]
do

echo 7. $answer7
echo
read -p "Answer: " ans

case $ans in

    $question7|$question7a|$question7b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question7
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 8 ]
do

echo 8. $answer8
echo
read -p "Answer: " ans

case $ans in

    $question8|$question8a|$question8b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question8
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 9 ]
do

echo 9. $answer9
echo
read -p "Answer: " ans

case $ans in

    $question9|$question9a|$question9b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question9
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 10 ]
do

echo 10. $answer10
echo
read -p "Answer: " ans

case $ans in

    $question10|$question10a|$question10b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question10
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 11 ]
do

echo 11. $answer11
echo
read -p "Answer: " ans

case $ans in

    $question11|$question11a|$question11b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question11
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 12 ]
do

echo 12. $answer12
echo
read -p "Answer: " ans

case $ans in

    $question12|$question12a|$question12b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question12
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 13 ]
do

echo 13. $answer13
echo
read -p "Answer: " ans

case $ans in

    $question13|$question13a|$question13b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question13
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 14 ]
do

echo 14. $answer14
echo
read -p "Answer: " ans

case $ans in

    $question14|$question14a|$question14b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question14
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 15 ]
do

echo 15. $answer15
echo
read -p "Answer: " ans

case $ans in

    $question15|$question15a|$question15b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question15
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 16 ]
do

echo 16. $answer16
echo
read -p "Answer: " ans

case $ans in

    $question16|$question16a|$question16b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question16
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 17 ]
do

echo 17. $answer17
echo
read -p "Answer: " ans

case $ans in

    $question17|$question17a|$question17b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question17
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 18 ]
do

echo 18. $answer18
echo
read -p "Answer: " ans

case $ans in

    $question18|$question18a|$question18b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question18
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 19 ]
do

echo 19. $answer19
echo
read -p "Answer: " ans

case $ans in

    $question19|$question19a|$question19b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question19
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 20 ]
do

echo 20. $answer20
echo
read -p "Answer: " ans

case $ans in

    $question20|$question20a|$question20b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question20
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 21 ]
do

echo 21. $answer21
echo
read -p "Answer: " ans

case $ans in

    $question21|$question21a|$question21b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question21
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 22 ]
do

echo 22. $answer22
echo
read -p "Answer: " ans

case $ans in

    $question22|$question22a|$question22b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question22
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 23 ]
do

echo 23. $answer23
echo
read -p "Answer: " ans

case $ans in

    $question23|$question23a|$question23b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question23
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 24 ]
do

echo 24. $answer24
echo
read -p "Answer: " ans

case $ans in

    $question24|$question24a|$question24b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question24
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 25 ]
do

echo 25. $answer25
echo
read -p "Answer: " ans

case $ans in

    $question25|$question25a|$question25b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question25
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 26 ]
do

echo 26. $answer26
echo
read -p "Answer: " ans

case $ans in

    $question26|$question26a|$question26b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question26
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 27 ]
do

echo 27. $answer27
echo
read -p "Answer: " ans

case $ans in

    $question27|$question27a|$question27b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question27
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 28 ]
do

echo 28. $answer28
echo
read -p "Answer: " ans

case $ans in

    $question28|$question28a|$question28b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question28
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 29 ]
do

echo 29. $answer29
echo
read -p "Answer: " ans

case $ans in

    $question29|$question29a|$question29b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question29
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 30 ]
do

echo 30. $answer30
echo
read -p "Answer: " ans

case $ans in

    $question30|$question30a|$question30b)
    echo "correct"
    echo
    echo
    echo
    q=$(( (q+1) ))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question30
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end



done














































#random mode loop
while [ $mode = "random" ]
do


#per question while loop
while [ $q = 1 ]
do

echo 1. $question1
echo
read -p "Answer: " ans

case $ans in

    $answer1|$answer1a|$answer1b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer1
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 2 ]
do

echo 2. $question2
echo
read -p "Answer: " ans

case $ans in

    $answer2|$answer2a|$answer2b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer2
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 3 ]
do

echo 3. $question3
echo
read -p "Answer: " ans

case $ans in

    $answer3|$answer3a|$answer3b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer3
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 4 ]
do

echo 4. $question4
echo
read -p "Answer: " ans

case $ans in

    $answer4|$answer4a|$answer4b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer4
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 5 ]
do

echo 5. $question5
echo
read -p "Answer: " ans

case $ans in

    $answer5|$answer5a|$answer5b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer5
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 6 ]
do

echo 6. $question6
echo
read -p "Answer: " ans

case $ans in

    $answer6|$answer6a|$answer6b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer6
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 7 ]
do

echo 7. $question7
echo
read -p "Answer: " ans

case $ans in

    $answer7|$answer7a|$answer7b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer7
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 8 ]
do

echo 8. $question8
echo
read -p "Answer: " ans

case $ans in

    $answer8|$answer8a|$answer8b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer8
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 9 ]
do

echo 9. $question9
echo
read -p "Answer: " ans

case $ans in

    $answer9|$answer9a|$answer9b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer9
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 10 ]
do

echo 10. $question10
echo
read -p "Answer: " ans

case $ans in

    $answer10|$answer10a|$answer10b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer10
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 11 ]
do

echo 11. $question11
echo
read -p "Answer: " ans

case $ans in

    $answer11|$answer11a|$answer11b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer11
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 12 ]
do

echo 12. $question12
echo
read -p "Answer: " ans

case $ans in

    $answer12|$answer12a|$answer12b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer12
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 13 ]
do

echo 13. $question13
echo
read -p "Answer: " ans

case $ans in

    $answer13|$answer13a|$answer13b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer13
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 14 ]
do

echo 14. $question14
echo
read -p "Answer: " ans

case $ans in

    $answer14|$answer14a|$answer14b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer14
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 15 ]
do

echo 15. $question15
echo
read -p "Answer: " ans

case $ans in

    $answer15|$answer15a|$answer15b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer15
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 16 ]
do

echo 16. $question16
echo
read -p "Answer: " ans

case $ans in

    $answer16|$answer16a|$answer16b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer16
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 17 ]
do

echo 17. $question17
echo
read -p "Answer: " ans

case $ans in

    $answer17|$answer17a|$answer17b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer17
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 18 ]
do

echo 18. $question18
echo
read -p "Answer: " ans

case $ans in

    $answer18|$answer18a|$answer18b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer18
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 19 ]
do

echo 19. $question19
echo
read -p "Answer: " ans

case $ans in

    $answer19|$answer19a|$answer19b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer19
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 20 ]
do

echo 20. $question20
echo
read -p "Answer: " ans

case $ans in

    $answer20|$answer20a|$answer20b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer20
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 21 ]
do

echo 21. $question21
echo
read -p "Answer: " ans

case $ans in

    $answer21|$answer21a|$answer21b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer21
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 22 ]
do

echo 22. $question22
echo
read -p "Answer: " ans

case $ans in

    $answer22|$answer22a|$answer22b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer22
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 23 ]
do

echo 23. $question23
echo
read -p "Answer: " ans

case $ans in

    $answer23|$answer23a|$answer23b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer23
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 24 ]
do

echo 24. $question24
echo
read -p "Answer: " ans

case $ans in

    $answer24|$answer24a|$answer24b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer24
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 25 ]
do

echo 25. $question25
echo
read -p "Answer: " ans

case $ans in

    $answer25|$answer25a|$answer25b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer25
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 26 ]
do

echo 26. $question26
echo
read -p "Answer: " ans

case $ans in

    $answer26|$answer26a|$answer26b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer26
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 27 ]
do

echo 27. $question27
echo
read -p "Answer: " ans

case $ans in

    $answer27|$answer27a|$answer27b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer27
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 28 ]
do

echo 28. $question28
echo
read -p "Answer: " ans

case $ans in

    $answer28|$answer28a|$answer28b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer28
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 29 ]
do

echo 29. $question29
echo
read -p "Answer: " ans

case $ans in

    $answer29|$answer29a|$answer29b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer29
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 30 ]
do

echo 30. $question30
echo
read -p "Answer: " ans

case $ans in

    $answer30|$answer30a|$answer30b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $answer30
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#(( q=1 ))

done
#random mode loop end




























#random reverse mode loop
while [ $mode = "reverse-random" ]
do


#per question while loop
while [ $q = 1 ]
do

echo 1. $answer1
echo
read -p "Answer: " ans

case $ans in

    $question1|$question1a|$question1b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question1
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 2 ]
do

echo 2. $answer2
echo
read -p "Answer: " ans

case $ans in

    $question2|$question2a|$question2b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question2
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 3 ]
do

echo 3. $answer3
echo
read -p "Answer: " ans

case $ans in

    $question3|$question3a|$question3b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question3
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 4 ]
do

echo 4. $answer4
echo
read -p "Answer: " ans

case $ans in

    $question4|$question4a|$question4b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question4
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 5 ]
do

echo 5. $answer5
echo
read -p "Answer: " ans

case $ans in

    $question5|$question5a|$question5b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question5
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 6 ]
do

echo 6. $answer6
echo
read -p "Answer: " ans

case $ans in

    $question6|$question6a|$question6b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question6
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 7 ]
do

echo 7. $answer7
echo
read -p "Answer: " ans

case $ans in

    $question7|$question7a|$question7b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question7
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 8 ]
do

echo 8. $answer8
echo
read -p "Answer: " ans

case $ans in

    $question8|$question8a|$question8b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question8
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 9 ]
do

echo 9. $answer9
echo
read -p "Answer: " ans

case $ans in

    $question9|$question9a|$question9b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question9
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 10 ]
do

echo 10. $answer10
echo
read -p "Answer: " ans

case $ans in

    $question10|$question10a|$question10b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question10
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 11 ]
do

echo 11. $answer11
echo
read -p "Answer: " ans

case $ans in

    $question11|$question11a|$question11b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question11
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 12 ]
do

echo 12. $answer12
echo
read -p "Answer: " ans

case $ans in

    $question12|$question12a|$question12b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question12
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 13 ]
do

echo 13. $answer13
echo
read -p "Answer: " ans

case $ans in

    $question13|$question13a|$question13b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question13
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 14 ]
do

echo 14. $answer14
echo
read -p "Answer: " ans

case $ans in

    $question14|$question14a|$question14b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question14
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 15 ]
do

echo 15. $answer15
echo
read -p "Answer: " ans

case $ans in

    $question15|$question15a|$question15b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question15
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 16 ]
do

echo 16. $answer16
echo
read -p "Answer: " ans

case $ans in

    $question16|$question16a|$question16b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question16
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 17 ]
do

echo 17. $answer17
echo
read -p "Answer: " ans

case $ans in

    $question17|$question17a|$question17b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question17
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 18 ]
do

echo 18. $answer18
echo
read -p "Answer: " ans

case $ans in

    $question18|$question18a|$question18b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question18
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 19 ]
do

echo 19. $answer19
echo
read -p "Answer: " ans

case $ans in

    $question19|$question19a|$question19b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question19
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 20 ]
do

echo 20. $answer20
echo
read -p "Answer: " ans

case $ans in

    $question20|$question20a|$question20b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question20
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 21 ]
do

echo 21. $answer21
echo
read -p "Answer: " ans

case $ans in

    $question21|$question21a|$question21b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question21
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 22 ]
do

echo 22. $answer22
echo
read -p "Answer: " ans

case $ans in

    $question22|$question22a|$question22b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question22
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 23 ]
do

echo 23. $answer23
echo
read -p "Answer: " ans

case $ans in

    $question23|$question23a|$question23b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question23
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 24 ]
do

echo 24. $answer24
echo
read -p "Answer: " ans

case $ans in

    $question24|$question24a|$question24b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question24
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 25 ]
do

echo 25. $answer25
echo
read -p "Answer: " ans

case $ans in

    $question25|$question25a|$question25b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question25
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 26 ]
do

echo 26. $answer26
echo
read -p "Answer: " ans

case $ans in

    $question26|$question26a|$question26b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question26
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 27 ]
do

echo 27. $answer27
echo
read -p "Answer: " ans

case $ans in

    $question27|$question27a|$question27b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question27
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 28 ]
do

echo 28. $answer28
echo
read -p "Answer: " ans

case $ans in

    $question28|$question28a|$question28b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question28
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 29 ]
do

echo 29. $answer29
echo
read -p "Answer: " ans

case $ans in

    $question29|$question29a|$question29b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question29
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end


#per question while loop
while [ $q = 30 ]
do

echo 30. $answer30
echo
read -p "Answer: " ans

case $ans in

    $question30|$question30a|$question30b)
    echo "correct"
    echo
    echo
    echo
    q=$((1 + $RANDOM % "$max"))
    ;;

    correct)
    echo
    echo
    echo Correct answer is: $question30
    ;;

    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)
    #set q to ans but keep q as increment
    q=$(( ans ))
    break
    ;;

    exit|quit|q|x)
    #breaks out of the mode
    echo
    echo exiting...
    echo
    ans=exit
    break
    ;;

    *)
    echo
    echo "Try again"
    ;;
esac

echo
echo
echo

done

if [[ "$ans" = "exit" ]]; then
    break
fi
#per question loop end



done








done


