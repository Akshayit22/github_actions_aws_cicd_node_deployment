#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v22.2.0/bin

cd github_actions_aws_cicd_node_deployment
git pull origin main
cd server
pm2 kill
pm2 start npm -- run server
cd
echo "done"
