#! /bin/bash

#This is a simple flip card game
#By Luuppi
#Can be referenced by LFG-2.3
#This is just a template
#You can put your own questions and answers under there
#(The lines 28-97)

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
question1="foo1"
question2="foo2"
question3="foo3"
question4="foo4"
question5="foo5"
question6="foo6"
question7="foo7"
question8="foo8"
question9="foo9"
question10="foo10"

#over 10 is usually not needed but is here for convenience
question11="foo11"
question12="foo12"
question13="foo13"
question14="foo14"
question15="foo15"
question16="foo16"
question17="foo17"
question18="foo18"
question19="foo19"
question20="foo20"

#just in case
question21="foo21"
question22="foo22"
question23="foo23"
question24="foo24"
question25="foo25"
question26="foo26"
question27="foo27"
question28="foo28"
question29="foo29"
question30="foo30"


#set answer variables

answer1="foo1ans"
answer2="foo2ans"
answer3="foo3ans"
answer4="foo4ans"
answer5="foo5ans"
answer6="foo6ans"
answer7="foo7ans"
answer8="foo8ans"
answer9="foo9ans"
answer10="foo10ans"

answer11="foo11ans"
answer12="foo12ans"
answer13="foo13ans"
answer14="foo14ans"
answer15="foo15ans"
answer16="foo16ans"
answer17="foo17ans"
answer18="foo18ans"
answer19="foo19ans"
answer20="foo20ans"

answer21="foo21ans"
answer22="foo22ans"
answer23="foo23ans"
answer24="foo24ans"
answer25="foo25ans"
answer26="foo26ans"
answer27="foo27ans"
answer28="foo28ans"
answer29="foo29ans"
answer30="foo30ans"




#main loop
while true; do

#welcome loop
while true;
do

#reset all the values
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
    read -p "Enter max random value: " max
    echo
    echo "Value set to" $max

    ;;

    q|x|quit|exit)
    echo "Going back to main menu..."
    break
    ;;

    *)
    echo "Incorrect value, try again."
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

    $answer1)
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

    $answer2)
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

    $answer3)
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

    $answer4)
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

    $answer5)
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

    $answer6)
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

    $answer7)
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

    $answer8)
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

    $answer9)
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

    $answer10)
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

    $answer11)
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

    $answer12)
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

    $answer13)
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

    $answer14)
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

    $answer15)
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

    $answer16)
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

    $answer17)
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

    $answer18)
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

    $answer19)
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

    $answer20)
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

    $answer21)
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

    $answer22)
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

    $answer23)
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

    $answer24)
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

    $answer25)
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

    $answer26)
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

    $answer27)
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

    $answer28)
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

    $answer29)
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

    $answer30)
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

    $question1)
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

    $question2)
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

    $question3)
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

    $question4)
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

    $question5)
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

    $question6)
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

    $question7)
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

    $question8)
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

    $question9)
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

    $question10)
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

    $question11)
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

    $question12)
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

    $question13)
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

    $question14)
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

    $question15)
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

    $question16)
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

    $question17)
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

    $question18)
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

    $question19)
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

    $question20)
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

    $question21)
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

    $question22)
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

    $question23)
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

    $question24)
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

    $question25)
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

    $question26)
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

    $question27)
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

    $question28)
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

    $question29)
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

    $question30)
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




#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...
#Definitely not ready yet...


while [ $mode = "random" ]
do


#per question while loop
while [ $q = 1 ]
do

echo 1. $question1
echo
read -p "Answer: " ans

case $ans in

    $answer1)
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

    $answer2)
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

    $answer3)
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

    $answer4)
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

    $answer5)
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

    $answer6)
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

    $answer7)
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

    $answer8)
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

    $answer9)
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

    $answer10)
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

    $answer11)
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

    $answer12)
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

    $answer13)
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

    $answer14)
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

    $answer15)
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

    $answer16)
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

    $answer17)
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

    $answer18)
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

    $answer19)
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

    $answer20)
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

    $answer21)
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

    $answer22)
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

    $answer23)
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

    $answer24)
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

    $answer25)
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

    $answer26)
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

    $answer27)
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

    $answer28)
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

    $answer29)
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

    $answer30)
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


















done


