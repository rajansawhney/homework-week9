echo "Running tests..."
echo

echo "*****"
echo
echo "Find the largest number..."
output_largest_num=$(./largest_num <test/input_largest_number)
echo $output_largest_num
expected_output_largest_num="24.20"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_largest_num == *$expected_output_largest_num* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_largest_num' but got: $output_largest_num"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0