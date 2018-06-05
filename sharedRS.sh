#!/bin/bash
# enables trusted mode for app control

sID=$1
#hostid=$2


curl -ks --cookie "sID=${sID}" https://app.deepsecurity.trendmicro.com/rest/rulesets --insecure -H "Content-Type: application/json" -X POST "https://app.deepsecurity.trendmicro.com/rest/rulesets" -d '{"CreateRulesetRequest":{"ruleset":{"rules":[{"sha256":"'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b674ca495991b7852b855'","size":"'9'", "action": "'allow'", "ruleID": "'12346'"}], "rulesetID": "'12346'", "name": "'sharedTwo'", "description": "'secondRule'", "version": "'1'"}}}'

#curl -ks --cookie "sID=1210088A-378D-20D3-E140-0299D02A2A75_F8531F3AE381F9EF3E32C6EADCC8D6A8" https://app.deepsecurity.trendmicro.com/rest/hosts/12063/trusted-update-mode --insecure -H "Content-Type: application/json"
#echo "shared rules set created "  