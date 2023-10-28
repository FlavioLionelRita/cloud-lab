# Network

Create a new stack:

```sh
aws cloudformation deploy --template-file ./template.yaml --capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND  --stack-name lab-network
```

Get outputs:

```sh
aws cloudformation describe-stacks --region eu-west-1 --query "Stacks[?StackName=='lab-network'][].Outputs" --no-paginate --output json >> result.json
```

Delete the stack:

```sh
aws cloudformation delete-stack --stack-name lab-network
```

## References

- [example](https://github.com/jquirossoto/wordpress-multisite-ecs-efs-rds/blob/master/README.md)
