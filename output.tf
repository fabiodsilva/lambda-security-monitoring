output "lambda_function_name" {
    description = "Lambda function name"
    value       = aws_lambda_function.lambda.arn
}

output "aws_sns_topic_subscription" {
    description = "aws_sns_topic_subscription"
    value = aws_sns_topic_subscription.securityhub_alarm_subscription
}