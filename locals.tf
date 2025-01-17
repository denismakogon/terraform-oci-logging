locals {
  apigwlogdef   = { for k, v in var.service_logdef : k => v if v.service == "apigateway" }
  apigwloggroup = [for k, v in var.service_logdef : v.loggroup if v.service == "apigateway"]

  devopslogdef   = { for k, v in var.service_logdef : k => v if v.service == "devops" }
  devopsloggroup = [for k, v in var.service_logdef : v.loggroup if v.service == "devops"]

  emaillogdef   = { for k, v in var.service_logdef : k => v if v.service == "email" }
  emailloggroup = [for k, v in var.service_logdef : v.loggroup if v.service == "email"]

  eventlogdef   = { for k, v in var.service_logdef : k => v if v.service == "cloudevents" }
  eventloggroup = [for k, v in var.service_logdef : v.loggroup if v.service == "cloudevents"]

  funclogdef   = { for k, v in var.service_logdef : k => v if v.service == "functions" }
  funcloggroup = [for k, v in var.service_logdef : v.loggroup if v.service == "functions"]

  lblogdef   = { for k, v in var.service_logdef : k => v if v.service == "loadbalancer" }
  lbloggroup = [for k, v in var.service_logdef : v.loggroup if v.service == "loadbalancer"]

  oslogdef   = { for k, v in var.service_logdef : k => v if v.service == "objectstorage" }
  osloggroup = [for k, v in var.service_logdef : v.loggroup if v.service == "objectstorage"]

  vcnlogdef   = { for k, v in var.service_logdef : k => v if v.service == "flowlogs" }
  vcnloggroup = [for k, v in var.service_logdef : v.loggroup if v.service == "flowlogs"]

  vpnlogdef   = { for k, v in var.service_logdef : k => v if v.service == "vpn" }
  vpnloggroup = [for k, v in var.service_logdef : v.loggroup if v.service == "vpn"]
}

locals {
  linuxloggroup = [for k, v in var.linux_logdef : v.loggroup]
  winloggroup   = [for k, v in var.windows_logdef : v.loggroup]
}
