for (( ; ; ))
do
openssl genrsa -3 $1 > key.pem
openssl rsa -in key.pem -pubout -out pub.pem
python NED-RSA.py pub.pem
done
