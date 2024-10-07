resource "aws_sns_topic" "user_updates" {
  name = "pell-sns-topic"
}

resource "aws_sns_topic_subscription" "notification_topic" {
  topic_arn = aws_sns_topic.user_updates.arn
  protocol  = "email"
  endpoint  = var.email_address_for_sns
}