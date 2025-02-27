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
  default = "https://compasso.webhook.office.com/webhookb2/69d500d6-745c-4894-911e-be67f18d85c7@97fa1f96-7877-469f-aa37-1f8568e3a3ff/IncomingWebhook/9f84cc937a3f4fcab71339bf11f8113f/a872d316-403f-44cf-8abc-cd830f9c6dab/V2mpYSFqSNN9crM1f5tEZIAj1nm1W1q4xnVSzYG2YO-2w1"
}
**
