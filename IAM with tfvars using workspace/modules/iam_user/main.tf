provider "aws" {
  region = var.region  
}

resource "aws_iam_user" "my_iam_user" {
  name = "${var.name}-user" 
  force_destroy = var.force_destroy
  tags = {
    Env = var.env
  }
}


resource "aws_iam_user_policy_attachment" "my_user_admin_policy" {
  user       = aws_iam_user.my_iam_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

  




