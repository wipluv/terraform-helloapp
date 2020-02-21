#!/bin/bash
# this line will install aws cli
pip install awscli

awscli# this will display and set the bucket name
myBucket=springboot-helloapp-wipluv

#this will find the app and run the app
aws s3 ls s3://$myBucket |awk '{print $4}'
myApp=`aws s3 ls s3://$myBucket |awk '{print $4}'`
aws s3 cp s3://$myBucket/$myApp /opt
java -jar /opt/$myApp
