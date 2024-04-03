locals {
  Org = "MSFT"  
  Prefix = "JSP-"
  Postfix = ["dev","qa", "prod"]
  dev_tags = {
    env = "Dev"
    user = "Dev_User"
   

  }
  stage_tags = {
    env = "Stage"
    user = "Stage_User"
    
  }

  prod_tags = {
    env = "Production"
    user = "prod_user"
   
  
}
}