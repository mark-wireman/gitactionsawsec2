#!/bin/bash
set -xe
export USERNAME="foobaruser"
export secretKey="foobaruserkey"


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://clouddeploystack-webappdeploymentbucket-4vnogpirpzkp/SpringBootHelloWorldExampleApplication.war /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps
