__cf_infos() {
    printf " cf"
    printf "[$(jq .OrganizationFields.Name ~/.cf/config.json | sed -e 's/"//g')]"
    printf "[$(jq .SpaceFields.Name ~/.cf/config.json | sed -e 's/"//g')]"
 }

