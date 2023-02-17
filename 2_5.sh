#sum upto odd n

echo enter a number
read n
s=0
for(( c=1;c<=n;c+=2 ))
do
((s+=c))
done
echo "$s"

#fibonacci

echo enter no.of terms
read n
if [ n -eq 1 ];
then
echo 
