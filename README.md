# ASDKBaselineSpaceBetweenIssue

Demonstration of issue https://github.com/facebook/AsyncDisplayKit/issues/1604 , showing how when the .BaselineFirst alignment option is used in conjunction with the .SpaceBetween justification, the justification isn't computed as expected. Instead of spacing the two nodes out, they're both laid out at the start (left) of the stack:

| .SpaceBetween + .Start | .SpaceBetween + .BaselineFirst |
|---|---|
|![img_1537](https://cloud.githubusercontent.com/assets/2466893/14872164/8b36f164-0c9e-11e6-9a8d-9a69b9a68d3e.PNG)|![img_1536](https://cloud.githubusercontent.com/assets/2466893/14872165/902f1c00-0c9e-11e6-9d10-98dc2a804b51.PNG)|
