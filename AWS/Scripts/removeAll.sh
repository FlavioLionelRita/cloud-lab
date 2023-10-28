
non_removable_roles=(
    "devops" 
    "AWSServiceRoleForAmazonElasticFileSystem" 
    "AWSServiceRoleForApplicationAutoScaling_ECSService" 
    "AWSServiceRoleForBackup"
    "AWSServiceRoleForECS"
    "AWSServiceRoleForElastiCache"
    "AWSServiceRoleForElasticLoadBalancing"
    "AWSServiceRoleForRDS"
    "AWSServiceRoleForSupport"
    "AWSServiceRoleForTrustedAdvisor"
)
non_removable_groups=(
    "devops" 
)
non_removable_users=(
    "devops" 
)
for user in $(aws iam list-users --query 'Users[*].[UserName]' --output text); do
    if [[ ! " ${non_removable_users[@]} " =~ " ${user} " ]]; then        
        for policy in $(aws iam list-attached-user-policies --user-name $user --query 'AttachedPolicies[*].[PolicyArn]' --output text); do
            aws iam detach-user-policy --user-name $user --policy-arn $policy
        done
        for group in $(aws iam list-groups-for-user --user-name $user --query 'Groups[*].[GroupName]' --output text); do
            aws iam remove-user-from-group --user-name $user --group-name $group
        done        
        for profile in $(aws iam list-instance-profiles-for-role --role-name $user --query 'InstanceProfiles[*].[InstanceProfileName]' --output text); do
            aws iam delete-instance-profile --instance-profile-name $profile
        done
        for role in $(aws iam list-roles-for-user --user-name $user --query 'Roles[*].[RoleName]' --output text); do
            aws iam remove-user-from-role --user-name $user --role-name $role
        done
        aws iam delete-access-key --user-name $user --access-key-id $(aws iam list-access-keys --user-name $user --query 'AccessKeyMetadata[*].[AccessKeyId]' --output text)
        aws iam delete-user --user-name $user
    fi
done
for group in $(aws iam list-groups --query 'Groups[*].[GroupName]' --output text); do
    if [[ ! " ${non_removable_groups[@]} " =~ " ${group} " ]]; then
        aws iam delete-group --group-name $group
    fi
done
for role in $(aws iam list-roles --query 'Roles[*].[RoleName]' --output text); do
    if [[ ! " ${non_removable_roles[@]} " =~ " ${role} " ]]; then
        aws iam delete-role --role-name $role
    fi
done

for region in $(aws ec2 describe-regions --query 'Regions[*].RegionName' --output text); do    
    aws ec2 describe-instances --region $region --query 'Reservations[*].Instances[*].InstanceId' --output text | xargs -I {} aws ec2 terminate-instances --region $region --instance-ids {}
    for cluster in $(aws ecs list-clusters --region $region --query 'clusterArns' --output text); do
        aws ecs delete-cluster --cluster $cluster --region $region
    done
    for instance in $(aws rds describe-db-instances --region $region --query 'DBInstances[*].[DBInstanceIdentifier]' --output text); do
        aws rds delete-db-instance --db-instance-identifier $instance --region $region --skip-final-snapshot
    done
    for lb in $(aws elbv2 describe-load-balancers --region $region --query 'LoadBalancers[*].[LoadBalancerArn]' --output text); do
        aws elbv2 delete-load-balancer --load-balancer-arn $lb --region $region
    done    
    for bucket in $(aws s3api list-buckets --region $region --query 'Buckets[*].Name' --output text); do
        aws s3 rm s3://$bucket --recursive --region $region
        aws s3 rb s3://$bucket --region $region --force
    done    
done