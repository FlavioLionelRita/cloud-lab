for region in $(aws ec2 describe-regions --query 'Regions[*].RegionName' --output text) do
    echo "Región $region:"
    echo "EC2"
    aws ec2 describe-instances --region $region --query 'Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name]' --output table
    echo "S3"
    aws s3 ls --region $region --output table
    echo "lambda"
    aws lambda list-functions --region $region --output table
    echo "cloudformation"
    aws cloudformation list-stacks --region $region --query 'StackSummaries[*].[StackName,StackStatus]' --output table
    # Network
    echo "VPC" 
    aws ec2 describe-vpcs --region $region --query 'Vpcs[*].[VpcId,CidrBlock]' --output table
    echo "subnets"
    aws ec2 describe-subnets --region $region --query 'Subnets[*].[SubnetId,CidrBlock]' --output table
    echo "security-groups"
    aws ec2 describe-security-groups --region $region --query 'SecurityGroups[*].[GroupId,GroupName]' --output table
    echo "route-tables"
    aws ec2 describe-route-tables --region $region --query 'RouteTables[*].[RouteTableId,VpcId]' --output table
    # ECS
    aws ecs list-clusters --region $region --query 'clusterArns[*].split("/")[1]' --output table
    for cluster in $(aws ecs list-clusters --region $region --query 'clusterArns[*].split("/")[1]' --output text) do
        echo "cluster $cluster"
        aws ecs list-services --region $region --cluster $cluster --query 'serviceArns[*].split("/")[1]' --output table
        for service in $(aws ecs list-services --region $region --cluster $cluster --query 'serviceArns[*].split("/")[1]' --output text) do
            echo "service $service"
            aws ecs list-tasks --region $region --cluster $cluster --service $service --query 'taskArns[*].split("/")[1]' --output table
            for task in $(aws ecs list-tasks --region $region --cluster $cluster --service $service --query 'taskArns[*].split("/")[1]' --output text) do
                echo "task $task"
                aws ecs describe-tasks --region $region --cluster $cluster --tasks $task --query 'tasks[*].containers[*].[containerArn,name]' --output table
            done
        done
    done
    # RDS
    echo "RDS"
    aws rds describe-db-instances --region $region --query 'DBInstances[*].[DBInstanceIdentifier,DBInstanceStatus]' --output table    
    echo "------------------------"
done
