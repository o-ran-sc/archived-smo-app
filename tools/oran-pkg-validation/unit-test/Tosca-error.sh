#!/bin/sh

echo 
echo "Validating TOSCA Version(Tosca-ver-vnf-vsn.csar) Unit test case 1"
python3 ../main.py csar-validate -d /tmp/vh2/ --no-verify-cert ../CSAR-dest/Tosca-ver-vnf-vsn.csar
if [ $? -eq 0 ]
then
	echo "TOSCA Unit test case 1 Passed"
else
	echo "TOSCA Unit test case 1 Failed"
fi
echo
echo "Validating TOSCA CSAR Version(Tosca-csar-ver-vnf-vsn.csar) Unit test case 2"
echo
python3 ../main.py csar-validate -d /tmp/vh2/ --no-verify-cert ../CSAR-dest/Tosca-csar-ver-vnf-vsn.csar
if [ $? -eq 0 ]
then
	echo "TOSCA Unit test case 2 Passed"
else
	echo "TOSCA Unit test case 2 Failed"
fi

