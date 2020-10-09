#$1: name, $2: tag
#mkfdev | mkf-dex-test
docker build --tag $1:$2 .

sleep 1

echo tag:
echo docker tag $1:$2 dabankio/$1:$2

echo push:
echo docker push dabankio/$1:$2
