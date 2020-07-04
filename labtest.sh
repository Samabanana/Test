#!/bin/sh

#Samantha Fallahi 216435521

 


h()
{
    echo 'Here are defined commands:'
    echo 'creg: give the list of course names with the total number of students registered in each course.'
    echo 'stc ######: gives the name of all course names in which the student with ###### id registered in.'
    echo 'gap ######: gives the GPA of the student defined with id ###### using the following formula: (course_1*credit_1 + . . . + course_n*credit_n) / (credit_1+ . . . + credit_n)'
    echo 'ctats: Gives the course/student statistics.'
    echo 'h: prints the current message.'

}


creg()
{
   FILES = /files/*;
    echo 'I am doing things'
    for course in $FILES
        do
            read d2 d3 d4 name < $course
            studentName=`echo $name | tr [:lower:] [:upper:]`
            count=`grep '^[0-9]' courses | wc -l`
            echo "In \"$studentName\", $count students register."
    done 
}

stc()
{
    count=0;
    for course in $files
    do
        grep -o "[0-9]\[6\]" $course >> temp1
        while read line
        do
        if [$line = $id] 
        then
            if [$count = "0"]
            then 
                echo The student with the id $id is registered in the following courses:
                fi
                read d2 d3 d4 name < $course
                credits = `grep -i "credits" $course | grep -o [0-9]`
                count = `expr $count1 + 1`
                echo $count1. `echo $name | tr [:lower:] [:upper:]` which has $credits credits
                fi
                done < temp1
                rm temp1
                done

                if [$count1 = "0"]
                then
                    echo The student with id $id is not registered in any course.
                    fi

}

gpa() 
{
 test = $3
    if [ $test != 6]
    then
    echo 'The student id should be 6 numbers.'
    exit 1
    else
        studentID = $3
        credits = 0
        total = 0
        if grep -q '$StudentID' $files
        then 
        while read -r class_files
        do
            total = $(grep $studentID $files | grep -Po ' [0-9]{1,2}')
            tmpvar = $((${subtotal//[^0-9]/+}))
            if [$tmpvar != 0]
            then
            credits = $(grep -i [.'credits'.] $files | cut -d: -f2 | grep[0-9])
            allCredits = 'expr $allCredits + $credits'
            tmpvar2 = $((${credits//[^0-9]/+}))
            total = 'expr $tmpvar \* $tmpvar2'
            otherTotal = 'expr $otherTotal + $total'
            else
            allCredits = $allCredits
            fi
            done 
            sum = 'expr $otherTotal \/ $allCredits'
            echo 'average' $total

            else
            echo "Not a valid student ID"
fi
fi
}




case $1 in

    h) h ;;
    creg) creg ;;
    stc) stc ;;
    gpa) gpa ;;
    cstats) cstats ;;
    *) echo 'unrecognized command.' ;;
    esac

exit 0
