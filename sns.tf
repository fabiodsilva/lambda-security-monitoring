resource "aws_sns_topic" "securityhub_alarm" {
    name = "securityhub-alarm-topic"
}

resource "aws_sns_topic_policy" "securityhub_alarm_policy" {
    arn    = aws_sns_topic.securityhub_alarm.arn
    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Effect = "Allow"
                Principal = "*"
                Action = "SNS:Publish"
                Resource = aws_sns_topic.securityhub_alarm.arn
            }
        ]
    })
}

resource "aws_sns_topic_subscription" "securityhub_alarm_subscription" {
    topic_arn = aws_sns_topic.securityhub_alarm.arn
    protocol  = "email"
    endpoint  = "fabio.brito@compasso.com.br"
}