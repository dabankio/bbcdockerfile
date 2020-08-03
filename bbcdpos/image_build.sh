docker build --tag bbcdpos:$1 .

sleep 1

docker tag bbcdpos:$1 dabankio/bbcdpos:$1

echo push: docker push dabankio/bbcdpos:$1