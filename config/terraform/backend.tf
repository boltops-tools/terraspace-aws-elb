terraform {
  backend "s3" {
    bucket         = "<%= expansion('terraform-state-:ACCOUNT-:REGION-:ENV') %>"     # expanded by terraspace IE: terraform-state-112233445566-us-west-2-dev
    key            = "<%= expansion(':REGION/:ENV/:BUILD_DIR/terraform.tfstate') %>" # expanded by terraspace IE: us-west-2/dev/modules/vm/terraform.tfstate
    region         = "<%= expansion(':REGION') %>"
    encrypt        = true
    dynamodb_table = "terraform_locks"
  }
}
