provider "aws" {
  alias  = "east1"
  region = var.region1
}

provider "aws" {
  alias  = "east2"
  region = var.region2
}