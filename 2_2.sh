echo "Enter first number :"
read a
echo "Enter second number :"
read b
echo "select the operation"
echo "1)sum 2)sub 3)mul 4)div"
read sign
((sum=a+b))
((sub=a-b))
((mul=a*b))
((div=a/b))
case $sign in
1)
echo "sum = $sum" ;;
2)
echo "sub = $sub" ;;
3)
echo "mul = $mul" ;;
4)
echo "div = $div" ;;
*)
echo "invalid operation" ;;
esac
