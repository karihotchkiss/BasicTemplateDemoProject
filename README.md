Org Setup
1. Authorize your Dev hub user:  sfdx force:auth:web:login -d -a devhub -r ((your instance url and port))
2. Create a DE org with your namespace and Link it to the devhub.
3. Replace all instances of "kari_de" namespace references with your namespace
4. Run orgInit.sh -- ./orgInit.sh
    This shell file will create an scratch org, install the template, load sample account data, create an app through an auto install request and open the newly created org in new browser tab.

To Follow Allong with the Demo:
1.  Update the template description, label, tags, and custom attributes.
2.  Update template badge with the comp image and the template preveiw with demo_preview.
3.  Push the template (sfdx force:source:push) and view the Template Wizard changes.
4.  Update variables.json with change in the "final_files" directory to add newField SObjectFieldType variable.
5.  Update ui.json to add the newField to the UI.
6.  Push the template ad view the Template Wizard page addition.
7.  Update template-to-app-rules.json file from final_files to add 2 rules to update the dashboard and recipe.  Rules documentation:  https://developer.salesforce.com/docs/atlas.en-us.bi_dev_guide_wave_templates.meta/bi_dev_guide_wave_templates/bi_templatesdev_edit_rules_json.htm.
8.  Push the template and create a template, choosing Industry as the grouping field.
9.  View the dashboard changes and recipe additions.