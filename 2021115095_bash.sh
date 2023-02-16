#!/bin/bash
echo "Hello"
echo -n "Printing without newline"
echo -e "\n hi \t World!\t"

: '
this is a 
multiline comment of bash files
'
echo "Enter your Name"
read name
echo "Welcome $name to Linux"
for (( counter=10; counter>0; counter--))
do
echo -n "$counter "
done
printf "\n"

valid=true
count=1
while [ $valid ]
do
echo $count
if [ $count -eq 5 ];
then
break
fi
((count++))
done

n=10
if [ $n -lt 10 ];
then
echo "It is a one digit number"
else
echo "It is a two digit number"
fi

echo "Enter user name"
read username
echo "Enter password"
read password
if [[ ( $username == "admin" && $password == "secret" ) ]];
then
echo "valid user"
else
echo "invalid user"
fi

echo "Enter any number"
read n
if [[ ( $n -eq 15 || $n -eq 45) ]]
then
echo "You won the game"
else
echo "You lost the game"
fi

echo "Emter your lucky number"
read n

if [ $n -eq  101 ];
then
echo "You got first prize"
elif [ $n -eq 510 ];
then 
echo "You got second prize"
elif [ $n -eq 999 ];
then
echo "You got third prize"
else
echo "Sorry,try for the next time"
fi
echo "Enter your lucky number"
read n
case $n in
101)
echo "You got first prize" ;;
510)
echo "You got second prize" ;;
999)
echo "You got third prize" ;;
*)
echo "Sorry, try for the next time" ;;
esac

echo "Total arguments : $#"
echo "1st Argument = $1"
echo "2nd Argument = $2"
string1="SSS"
string2="ZZZ"
echo "$string1$string2"
string3=$string1+$string2
string3+=" is a Student"
echo $string3
Str="Welcome to Linux"
subStr=${Str:3:4}
echo $subStr
echo "Enter first number"
read x
echo "Enter second number"
read y
((sum=x+y))
echo "The result of addition=$sum"
function F1()
{
echo "I like bash programming"
}
F1
Rectangle_Area() {
area=$(($1 * $2))
echo "Area is :$area"
}
Rectangle_Area 10 20

function greeting() {

str="Hello, $name"
echo $str

}

echo "Enter your name"
read name

val=$(greeting)
echo "Return value of the function is $val"

echo "Enter directory name"
read mydir
`mkdir mydir`

echo "Enter directory name"
read ndir
if [ -d "$ndir" ];
then
echo "Directory already exist"
else
`mkdir ndir`
echo "Directory created"
fi

file='book.txt'
while read line; do
echo $line
done < $file

echo "Enter filename to remove"
read fn
rm -i $fn

filename=$1
if [ -f "$filename" ]; then
echo "File exists"
else
echo "File does not exist"
fi


echo "Before appending the file"
cat book.txt

echo "Learning Laravel 5">> book.txt
echo "After appending the file"
cat book.txt

Recipient=”saravanasudharsan14@gmail.com”
Subject=”Greeting”
Message=”Welcome to our site”
`mail -s $Subject $Recipient <<< $Message`

echo "Wait for 5 seconds"
sleep 5
echo "Completed"


echo "Wait command" &
process_id=$!
wait $process_id
echo "Exited with status $?"
