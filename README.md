# lambda-security-monitoring
lambda who send e-mail and tems message

What this Template does:

     * Create SNS with Subscription;
     * Create a Lambda;
     * Create a eventbridge to take Security Hub Critical and High alarms.


Cis-Benchmark on AWS using Cloudformation.


## Requirements

1 - A e-mail where the alarm will be send.

2 - A Teams webhook

3 - on the variables.tf file fill the fields.
**
variable "region" {
  default = "us-east-1"
}

variable "webhook" {
  default = "<teams webhook>"
}
**
