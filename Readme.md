## A great reason to create Terraform Modules is to isolate common blocks of Terraform code that are used in one or more projects many times, and enhance it with coding conventions, compliance requirements, best practices, and other security standards that are defined requirements to adhere to within your team and organization. This helps ensure these requirements are met regardless of what Terraform Project manages the resources a specific Terraform Modules is coded to manage. 

## A couple of security or compliance requirements that may need to be adhered to are supporting only the latest version of TLS or connecting an Azure Network Security Group (NSG) to a Virtual Network (VNet) Subnet to lock down network traffic flow. These are types of “convention over configuration” that could be implemented in a Terraform Project, or across multiple Terraform Projects, through the use of a set of shared Terraform Modules.

## When the Terraform Module implements the conventions of configuring resources a certain way, then any Terraform project using that module will automatically get those benefits. Then, when the Terraform Module is updated to a change in compliance or security standards, the Terraform Projects that use that module may automatically benefit from those changes or be easily upgraded to use a newer version of that module for intentional use of the new version.

## “Convention over configuration” is an idea that comes from software development, largely originating in Ruby on Rails and adopted elsewhere, that makes a preference of adhering to conventions by default in a software system instead of requiring the custom configuration of settings on every use. Essentially, applied to Terraform Modules, the “default” parameters, argument and configuration of the resources managed by the module will generally meet the compliance, security or other requirements without needing to explicitly set those configurations in the Terraform Project that consumes the module. This enables an automatic win of meeting defined team and organizational standards on the resources managed by the Terraform Project. 

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
