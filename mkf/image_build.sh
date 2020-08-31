docker build --tag mkfdev:$1 .

sleep 1

echo tag:
echo docker tag mkfdev:$1 dabankio/mkfdev:$1

echo push:
echo docker push dabankio/mkfdev:$1
