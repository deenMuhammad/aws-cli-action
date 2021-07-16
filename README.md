# AWS CLI Action

This action makes the command `aws` available for you to run with any sub commands and arguments

```yml
  - name: Run aws command
    uses: nohmad/aws-cli-action@master
    with:
      aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
      aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
      aws-region: ap-northeast-2
      args: ec2 describe-instances
```

# Inputs

### args

Any sub commands and arguments pass to aws cli

### aws-access-key-id

**Required** `secrets.AWS_ACCESS_KEY_ID`

### aws-secret-access-key

**Required** `secrets.AWS_SECRET_ACCESS_KEY`

### aws-region

**Required** `secrets.AWS_REGION`

# Outputs

None

# Author

GY Noh <nohmad@gmail.com>

# LICENSE

MIT License
