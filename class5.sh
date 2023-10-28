
# Script Name:                  Hello World
# Author:                       Joe Gutmann
# Date of latest revision:      27Oct2023
# Purpose:                      Ops Challenge: Class 05. Learn about loopy loops


#Hit up the user for their PID
while true; do
echo "Just in case you don't know your PID... In five seconds they shall be displayed. Try not to kill your computer."
sleep 5
ps aux
echo "Please enter your desired PID or q to quit"
read user_pid

#allow the user to quit
if [ "$user_pid" == "q" ]; then
    echo "Permission to leave is granted"
    break #hopefully this allows a clean exit
fi

if [[ $user_pid =~ ^[0-9]+$ ]]; then
    if kill -0 $user_pid 2>/dev/null; then #hopefully this kills it
                if kill $user_pid; then
echo "Your selected PID $user_pid is valid and exists. Let's pray
to the computer goblins the computer shall not crash upon execution."
     
        else
            echo "The PID $user_pid does not exist. Please try again with something other than $user_pid"
        fi
        fi #apparently fi fi is needed. I can only assume this is because the of the multiple if then if then if then... else. The if thens must be tied to one fi and then the else
        #to another... Please let me know if this theory is incorrect.
    else
        echo "Invalid input. Please enter a valid PID (numeric value) or 'q' to quit."
    fi
done

#for GIT SUBMISSIONS commits and what not 
#git add Ops_Challenge_2_Functions.sh
#git commit -m "My First Function, Challenge Complete"
#git push