Configuration
-------------

The following configurations are available for users to customise the creation process and the resulting machine images.

Check out the [example configuration files](https://github.com/shinesolutions/aem-aws-stack-builder/blob/master/examples/user-config/) as reference.


| Name | Description | Required? | Default |
|------|-------------|-----------|---------|
| aws.region | [AWS region name](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html) | Optional | `ap-southeast-2` |
| ci.aws.hosts.platform_type + ci.aws.hosts.os_type | The platform types and OS types supported by [Packer AEM](https://github.com/shinesolutions/packer-aem/tree/master/examples/user-config). The `platform_type` and `os_type` are paired for the host because we don't support all permutations of platform types and OS types. | Optional | `aws` + `rhel7`, `aws` + `amazon-linux2`, `docker` + `centos7` |
| ci.aws.aem_versions | The AEM versions supported by [Packer AEM](https://github.com/shinesolutions/packer-aem/tree/master/examples/user-config). | Optional | `aem62`, `aem63`, `aem64` |
| ci.aws.components | The machine image component names supported by [Packer AEM](https://github.com/shinesolutions/packer-aem#packer-aem). | Optional | `java`, `author`, `publish`, `dispatcher`, `author-publish-dispatcher` |
| ci.aws.s3.bucket_name | S3 bucket where the build artifacts will be stored (if any). | Mandatory | |
| ci.aws.iam.role_arn | ARN of IAM role which contains the permissions required to use [CodeBuild](https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-permissions-reference.html) and [CodePipeline](https://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-custom-role.html) | Mandatory | |
| scm.repos.packer_aem.branches | [Packer AEM](https://github.com/shinesolutions/packer-aem) branches to be used for CodeBuild and CodePipeline resources related to creating machine images. | Optional | An array with single value `master` |
| scm.repos.aem_aws_stack_builder.branches | [AEM AWS Stack Builder](https://github.com/shinesolutions/aem-aws-stack-builder) branches to be used for CodeBuild and CodePipeline resources related to creating AEM environments. | Optional | An array with single value `master` |
