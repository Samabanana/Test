#Samantha Fallahi 216435521

#!/bin/sh

student_creg() #total number of students registered in each course
{
 for course in $courses
	grep -i 'Course Name:' $course
	echo ','
	grep -c [0-9]{6}$ $course
	echo 'students are registered'
done
}




student_std #Finds the courses that a student with id number is enrolled in
{
	echo 'The student with id: $1 is registered in the following courses:'
	for course in $courses
	
	if
		$1 = grep [0-9] $course
	then

	grep -i 'Course [[:space::]] name' $course
	done
}

student_gpa
{
	echo 'The GPA for the student with id: [arg0] is'
	expr cut[f1][-d] \* 
	done
}

help() #Help command
{
	echo 'Here's your commands:'
	echo 'creg: Gives the total number of students registered'
	echo 'stc: Finds the names of the courses the student with said student id has.'
	echo 'gpa: Finds the gpa of the student with said student id.'
	echo 'h: print the current message.' 

	done
}

prompt = "Please input a command: "
printf "prompt"

while true
do
read command
case $command in

	creg) student_creg ;;

	stc [0-9]{6}$) 
	student_stc;;

	gpa [0-9]{6}$) 
	student_gpa;;

	h) help;;

	*) echo 'You should put in a valid command. If you need help, input h.';;
	
	stc) echo 'Student id must be exactly 6 numbers.'

	LabTest1.sh | LabTest1.sh .) echo 'You should enter the path name for course files and at least one command.'
	printf "prompt"
done
exit 0