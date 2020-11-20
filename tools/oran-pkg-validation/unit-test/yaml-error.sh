#!/bin/sh

echo 
echo "Validating YAML error(yaml-error-vnf-vsn.csar) Unit test case 1"
python3 ../main.py csar-validate -d /tmp/vh2/ --no-verify-cert ../CSAR-dest/yaml-error-vnf-vsn.csar
if [ $? -eq 0 ]
then
	echo "YAML error Unit test case 1 Passed"
else
	echo "YAML error Unit test case 1 Failed"
fi
echo 
echo "Validating YAML file error(yaml-file-error-vnf-vsn.csar) Unit test case 1"
python3 ../main.py csar-validate -d /tmp/vh2/ --no-verify-cert ../CSAR-dest/yaml-file-error-vnf-vsn.csar
if [ $? -eq 0 ]
then
	echo "YAML file error Unit test case 2 Passed"
else
	echo "YAML file error Unit test case 2 Failed"
fi

