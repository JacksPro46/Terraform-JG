## Modules

## A great reason to create Terraform Modules is to isolate common blocks of Terraform code that are used in one or more projects many times, and enhance it with coding conventions, compliance requirements, best practices, and other security standards that are defined requirements to adhere to within your team and organization. This helps ensure these requirements are met regardless of what Terraform Project manages the resources a specific Terraform Modules is coded to manage. 

## A couple of security or compliance requirements that may need to be adhered to are supporting only the latest version of TLS or connecting an Azure Network Security Group (NSG) to a Virtual Network (VNet) Subnet to lock down network traffic flow. These are types of “convention over configuration” that could be implemented in a Terraform Project, or across multiple Terraform Projects, through the use of a set of shared Terraform Modules.

## When the Terraform Module implements the conventions of configuring resources a certain way, then any Terraform project using that module will automatically get those benefits. Then, when the Terraform Module is updated to a change in compliance or security standards, the Terraform Projects that use that module may automatically benefit from those changes or be easily upgraded to use a newer version of that module for intentional use of the new version.

## “Convention over configuration” is an idea that comes from software development, largely originating in Ruby on Rails and adopted elsewhere, that makes a preference of adhering to conventions by default in a software system instead of requiring the custom configuration of settings on every use. Essentially, applied to Terraform Modules, the “default” parameters, argument and configuration of the resources managed by the module will generally meet the compliance, security or other requirements without needing to explicitly set those configurations in the Terraform Project that consumes the module. This enables an automatic win of meeting defined team and organizational standards on the resources managed by the Terraform Project. 


