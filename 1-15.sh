#!/usr/bin/bash
number1=1   #bottom bound
number2=300 #upper bound
num3=1 #counter
set VAR
if [ -n "$VAR" ]
then
	if [ $VAR -ge $number1 ] && [ $VAR -le $number2 ]; then #compare the number from user with bounds
	  while [ $num3 -le $VAR ] #while counter less than num from user
	    do 
	      echo "dir" `pwgen $num3` "$num3"; #print necessary string with password len = current couner and current counter
	      ((num3+=1)) #increase counter
	    done
	exit 0; #exit with code 0 when code correct finished 
	  
	else  #if condition not completed 
	  echo "Number out of range" #print message of mistake
	exit 1 #not null exit when user gave incorrect number
	fi;
else
	echo "You should give parametr when you start the program"
exit 1	#not null exit when user don't gave number 
fi; 
