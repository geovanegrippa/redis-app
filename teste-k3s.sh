#/bin/bash
RESULT="`wget -qO- http://www.10.10.1.50.sslip.io/`"
wget -q 10.10.1.50.sslip.io:80
if [ $? -eq 0 ]
then
    echo 'Ok - Serviço no ar!'
elif [[ $RESULT == *"Number"* ]]
then
    echo 'ok - number of visits'
    echo $RESULT
else
    echo 'not ok - number of visits'
    exit 1
fi
