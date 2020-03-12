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

# Thanks & Refs

https://github.com/mesosphere/aws-cli

https://docs.aws.amazon.com/cli/latest/reference/configure/

https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-configure.html
