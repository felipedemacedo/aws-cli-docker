# AWS CLI inside Docker Container
Docker container (Alpine) with AWS CLI installed. Credentials must be given on docker run command.

# Run

Just edit the following command with your AWS credentials:

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY

and run:

```java
docker run -ti -e AWS_ACCESS_KEY_ID=xxx -e AWS_SECRET_ACCESS_KEY=yyy felipederodrigues/aws-cli sh
```

# Verify

For checking if it works:

```java
~/.aws # aws s3 ls
2020-02-29 19:17:02 elasticbeanstalk-eu-central-1-456456465456
2020-01-28 20:44:30 elasticbeanstalk-us-west-2-123123123132
2020-01-31 16:19:12 staticfiles
2020-03-04 14:22:44 area51
```


# Thanks & Refs

https://github.com/mesosphere/aws-cli

https://docs.aws.amazon.com/cli/latest/reference/configure/

https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-configure.html
