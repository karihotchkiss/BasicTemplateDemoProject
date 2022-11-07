echo "__________________________________"
echo "Starting Creation of Scratch org."
echo "__________________________________"
# create scratch org
sfdx force:org:create -f config/project-scratch-def.json -s -d 7 -w 60 -a DemoSamples

echo "__________________________________"
echo "Pushing Data into Scratch Org."
echo "__________________________________"
sfdx force:data:bulk:upsert -s Account -f ./data/AccountData.csv -i Id 

echo "__________________________________"
echo "Pushing Source into Scratch Org."
echo "__________________________________"
sfdx force:source:push


echo "__________________________________"
echo "Listing Embedded Templates."
echo "__________________________________"
sfdx analytics:template:list -e

sfdx analytics:autoinstall:app:create -n "kari_de__NovemberDemoTemplate"

sfdx analytics:app:list

sfdx force:org:open



