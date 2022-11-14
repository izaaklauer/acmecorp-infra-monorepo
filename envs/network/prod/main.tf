terraform {
  cloud {
    organization = "hc-waypoint"

    workspaces {
      name = "acmecorp-networking-dev"
    }
  }
}

module "vpc" {
  source = "../../../modules/network/vpc"

  vpc_name = "acmecorp-dev"

  tags = {
    corp      = "acmecorp"
    owner     = "izaak"
    terraform = "true"
    env       = "dev"
  }
}
