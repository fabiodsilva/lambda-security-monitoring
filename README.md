# lambda-security-monitoring
lambda who send e-mail and tems message usin terraform

What this Template does:

     
     * Create SNS with Subscription;
     * Create a Lambda;
     * Create a eventbridge to take Security Hub Critical and High alarms.



## Requirements

1 - A e-mail where the alarm will be send.

2 - A Teams webhook

3 - on the variables.tf file fill the fields.
```
variable "region" {
  default = "us-east-1"
}

variable "webhook" {
  default = "<teams webhook>"
}
```

4 - on the sns.tf file too

```
resource "aws_sns_topic_subscription" "securityhub_alarm_subscription" {
    topic_arn = aws_sns_topic.securityhub_alarm.arn
    protocol  = "email"
    endpoint  = "<e-mail>"
}
```

5 - terraform version
```
Terraform v1.10.0
```
6 - pyhton version
```
Python 3.10.12
```




## by DONI 


