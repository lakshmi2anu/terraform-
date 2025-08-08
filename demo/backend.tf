terraform{
  backend "s3" {
     bucket = "wezvatech-adam-demo-s3-aug25remotestate"
     key = "aug25projects/terraform.tfstate" # path & file which will hold the state #
     region = "ap-south-1"
     dynamodb_table = "terraform-state-lock-dynamo" # dynamoDB to store state lock #
     encrypt        = "true"
  }
}