docker build --tag bbccore:$1 .

sleep 1

docker tag bbccore:$1 dabankio/bbccore:$1

echo push: docker push bbccore:$1