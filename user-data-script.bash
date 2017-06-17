#!/bin/bash

apt-get update && apt-get install -y ruby curl nginx
curl https://aws-codedeploy-ap-northeast-1.s3.amazonaws.com/latest/install > /tmp/codedeploy-agent-install
chmod +x /tmp/codedeploy-agent-install
/tmp/codedeploy-agent-install auto
systemctl enable codedeploy-agent.service
systemctl start codedeploy-agent.service
