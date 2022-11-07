1. Authorize your Dev hub user:  sfdx force:auth:web:login -d -a devhub -r ((your instance url and port))
2. Create a DE org with your namespace and Link it to the devhub.
3. Replace all instances of "kari_de" namespace references with your namespace
4. Run orgInit.sh -- ./orgInit.sh
    This shell file will create an scratch org, install the template, load sample account data, create an app through an auto install request and open the newly created org in new browser tab.