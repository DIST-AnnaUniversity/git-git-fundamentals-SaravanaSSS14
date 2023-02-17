echo "enter the string :"
read s
rev=$(echo $s | rev)
echo "$rev"
if [ $s == $rev ]; 
then
   echo "it is palindrome"
else
   echo "it is not palindrome"
fi
