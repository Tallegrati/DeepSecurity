#!/bin/bash
# Dsapi.sh: dsmuser dsmpass manager address guiPort tenant
username=$1
password=$2
tenant=$5

# replace this with your DSM IP or FQDN
DSMURL="$3:$4"


#login 
if [[ -z $tenant ]]
  then
      SID=`curl -ks -H "Content-Type: application/json" -X POST "https://${DSMURL}/rest/authentication/login/primary" -d '{"dsCredentials":{"userName":"'${username}'","password":"'${password}'"}}'`
  else
      SID=`curl -ks -H "Content-Type: application/json" -X POST "https://${DSMURL}/rest/authentication/login" -d '{"dsCredentials":{"userName":"'${username}'","password":"'${password}'","tenantName":"'${tenant}'"}}'`
fi




echo connected to manager version:
curl -k https://$DSMURL/rest/managerInfo/version 
echo
echo Please make sure you are using the correct SDK for this version!
echo You may now test Api calls with bash commands using the sID ${SID}
echo When finished, please close connection with: curl -k -X DELETE https://$DSMURL/rest/authentication/logout?sID=${SID}




