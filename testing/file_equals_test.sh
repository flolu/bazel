sleep 1

if [ "$(cat $1)" = "$2" ]; then
  echo "Test passed"
  exit 0
else
  echo "Test failed"
  exit 1
fi
