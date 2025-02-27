# EventBridge rule
resource "aws_cloudwatch_event_rule" "securityhub" {
  name        = "securityhub"
  description = "Capture critial and high alarm from Security Hub data"
        event_pattern = jsonencode({
            "source": ["aws.securityhub"],
            "detail-type": ["Security Hub Findings - Imported"],
            "detail": {
                "findings": {
                "Severity": {
                    "Label": ["CRITICAL", "HIGH"]
                },
                "Workflow": {
                    "Status": ["NEW"]
                }
                }
            }
            })
}

# EventBridge target (Lambda as target)
resource "aws_cloudwatch_event_target" "lambda_target" {
  rule      = aws_cloudwatch_event_rule.securityhub.name
  arn       = aws_lambda_function.lambda.arn
  target_id = "my-lambda-target"
}

# Allow EventBridge to invoke the Lambda function
resource "aws_lambda_permission" "allow_eventbridge" {
  statement_id  = "AllowEventBridgeInvoke"
  action        = "lambda:InvokeFunction"
  principal     = "events.amazonaws.com"
  function_name = aws_lambda_function.lambda.function_name
  source_arn    = aws_cloudwatch_event_rule.securityhub.arn
}