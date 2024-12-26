
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

  resource "aws_iam_user_login_profile" "my_user_login_profile" {
  user                    = aws_iam_user.my_iam_user.name
 
  password_reset_required = true
}




