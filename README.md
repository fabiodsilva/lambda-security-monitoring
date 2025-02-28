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

# Topology


[Uploading Send<mxfile host="app.diagrams.net" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36" version="26.0.16">
  <diagram id="Ht1M8jgEwFfnCIfOTk4-" name="Page-1">
    <mxGraphModel dx="1434" dy="738" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1169" pageHeight="827" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="UEzPUAAOIrF-is8g5C7q-113" value="Lambda" style="outlineConnect=0;fontColor=#232F3E;gradientColor=#F78E04;gradientDirection=north;fillColor=#D05C17;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.lambda;labelBackgroundColor=#ffffff;spacingTop=3;" parent="1" vertex="1">
          <mxGeometry x="520" y="100" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="pQdaO74lESqWg7ZdYewZ-5" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="pQdaO74lESqWg7ZdYewZ-1" target="pQdaO74lESqWg7ZdYewZ-4">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="pQdaO74lESqWg7ZdYewZ-1" value="Security Hub" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#DD344C;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.security_hub;" vertex="1" parent="1">
          <mxGeometry x="180" y="100" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="pQdaO74lESqWg7ZdYewZ-6" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="pQdaO74lESqWg7ZdYewZ-4" target="UEzPUAAOIrF-is8g5C7q-113">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="pQdaO74lESqWg7ZdYewZ-4" value="Event Bridge" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#E7157B;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.eventbridge;" vertex="1" parent="1">
          <mxGeometry x="350" y="100" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="pQdaO74lESqWg7ZdYewZ-12" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="pQdaO74lESqWg7ZdYewZ-7" target="pQdaO74lESqWg7ZdYewZ-10">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="pQdaO74lESqWg7ZdYewZ-7" value="SNS" style="outlineConnect=0;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;shape=mxgraph.aws3.sns;fillColor=#D9A741;gradientColor=none;" vertex="1" parent="1">
          <mxGeometry x="690" y="101.5" width="76.5" height="76.5" as="geometry" />
        </mxCell>
        <mxCell id="pQdaO74lESqWg7ZdYewZ-8" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0;entryY=0.48;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="1" source="UEzPUAAOIrF-is8g5C7q-113" target="pQdaO74lESqWg7ZdYewZ-7">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="pQdaO74lESqWg7ZdYewZ-14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="UEzPUAAOIrF-is8g5C7q-113" target="pQdaO74lESqWg7ZdYewZ-11">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="768" y="287.5" as="sourcePoint" />
            <Array as="points">
              <mxPoint x="559" y="290" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="pQdaO74lESqWg7ZdYewZ-10" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#E7157B;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.email_notification;" vertex="1" parent="1">
          <mxGeometry x="870" y="101.5" width="78" height="78" as="geometry" />
        </mxCell>
        <mxCell id="pQdaO74lESqWg7ZdYewZ-11" value="TEAMS" style="sketch=0;pointerEvents=1;shadow=0;dashed=0;html=1;strokeColor=none;fillColor=#DF8C42;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;align=center;outlineConnect=0;shape=mxgraph.veeam2.microsoft_teams;" vertex="1" parent="1">
          <mxGeometry x="870" y="248.5" width="90" height="80" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
SecurityHubAlerts.drawio…]()


## by DONI 


