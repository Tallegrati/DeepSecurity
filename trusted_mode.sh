
#!/bin/bash
# enables trusted mode for app control

sID=$1
hostid=$2


curl -ks --cookie "sID=${sID}" https://app.deepsecurity.trendmicro.com/rest/hosts/${hostid}/trusted-update-mode --insecure -H "Content-Type: application/json" -X POST "https://app.deepsecurity.trendmicro.com/rest/hosts/${hostid}/trusted-update-mode" -d '{"ModifyTrustedUpdateModeRequest":{"enabled":"'true'","duration":"'10'"}}'

#curl -ks --cookie "sID=1210088A-378D-20D3-E140-0299D02A2A75_F8531F3AE381F9EF3E32C6EADCC8D6A8" https://app.deepsecurity.trendmicro.com/rest/hosts/12063/trusted-update-mode --insecure -H "Content-Type: application/json"
echo "trusted mode enabled for 10 minutes on host " ${hostid} 
