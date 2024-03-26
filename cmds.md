## terraform plan commnads
## terrafrom plan
## terraform plan -out=tfplan.out ##here it is displaying plan in .out file
## terraform show tfplan.out
## terraform show -json tfplan.out ## shows the plan in json format 
## terraform apply tfplan.out  ## Once we applied this then we can't see the plan in show command again with the out file , throws an error i.e "Saved plan is stale

## terraform state list == lists all the resources from our state file which includes data sources as well.

## terraform state show <resource name from the list> then it shows particular resource state

## terraform state mv <Source-resource> <Destination-resource>
## Ex: terraform state mv az-resourcegrp.appservice  az-resourcegrp.appservice-new
## But in reality it cannot change the resource name that we can see in plan/apply commands.
## Both the source and destination addresses must use resource address syntax, and they must both refer to the same kind of object