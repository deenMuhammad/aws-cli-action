# AWS CLI Action

This action makes the command `aws` available for you to run with any sub commands and arguments

```yml
  - uses: aws-actions/configure-aws-credentials@v3
    name: Configure AWS Credentials
    with:
      role-to-assume: ROLE_ARN
      aws-region: REGION
  - name: Run aws command
    uses: nohmad/aws-cli-action@master
    with:
      args: ec2 describe-instances
```

# Inputs

### args

Any sub commands and arguments pass to aws cli

# Outputs

None

# Author

GY Noh <nohmad@gmail.com>

# LICENSE

MIT License
