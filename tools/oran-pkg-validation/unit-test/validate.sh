#!/bin/sh

echo 
echo "Validating vnf-vsn.csar Unit test case 1"
python3 ../main.py csar-validate -d /tmp/vh2/ --no-verify-cert ../CSAR-dest/vnf-vsn.csar
if [ $? -eq 0 ]
then
	echo "Unit test case 1 Passed"
else
	echo "Unit test case 1 Failed"
fi
echo 
echo "Validating ns-vsn.csar unit test case 2"
echo
python3 ../main.py csar-validate -d /tmp/vh2/ --no-verify-cert ../CSAR-dest/ns-vsn.csar
echo
if [ $? -eq 0 ]
then
	echo "Unit test case 2 Passed"
else
	echo "Unit test case 2 Failed"
fi
echo

