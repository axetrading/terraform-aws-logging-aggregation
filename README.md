This module creates a CloudWatch agent and Fluentbit daemonset for an EKS cluster.
It uses the 
# terraform-aws-logging-aggregation

Example usage:

```hcl-terraform
module "eks-cloudwatch" {
  source                  = "git@github.com:axetrading/terraform-aws-logging-aggregation.git"
  depends_on              = [module.eks]
  account_id              = var.account_id
  region                  = var.region
  eks_cluster_name        = var.eks_cluster_name
  oidc_host_path          = local.oidc_host_path
  enable_cloudwatch_agent = true
  enable_fluentbit        = true
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.5.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.7.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 1.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.5.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 1.13 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.cloudwatch-application](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_group.cloudwatch-dataplane](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_group.cloudwatch-host](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_group.cloudwatch-performance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_group.fluentbit](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_iam_policy.cloudwatch-agent](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.fluentbit](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.cloudwatch-agent](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.fluentbit](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.cloudwatch-agent](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.fluentbit](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [helm_release.cloudwatch-agent](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.fluentbit](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_config_map.cluster-info](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [kubernetes_namespace.amazon-cloudwatch](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | The AWS account ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The AWS region to deploy to | `string` | n/a | yes |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Name of the EKS cluster | `string` | n/a | yes |
| <a name="input_enable_cloudwatch_agent"></a> [enable\_cloudwatch\_agent](#input\_enable\_cloudwatch\_agent) | Boolean to enable cloudwatch agent | `bool` | n/a | yes |
| <a name="input_enable_fluentbit"></a> [enable\_fluentbit](#input\_enable\_fluentbit) | Boolean to enable fluentbit | `bool` | n/a | yes |
| <a name="input_log_preserve_legacy_log_group"></a> [log\_preserve\_legacy\_log\_group](#input\_log\_preserve\_legacy\_log\_group) | When true, preserves the legacy log group. Mainly useful to transition to the new log group format | `bool` | `true` | no |
| <a name="input_log_retention_in_days"></a> [log\_retention\_in\_days](#input\_log\_retention\_in\_days) | Number of days to retain log events | `number` | `90` | no |
| <a name="input_oidc_host_path"></a> [oidc\_host\_path](#input\_oidc\_host\_path) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## License

This project uses parts of the Helm chart from the AWS EKS Charts repository, available at:
https://github.com/aws/eks-charts/tree/master/stable/aws-for-fluent-bit

The original work in the AWS EKS Charts repository is licensed under the Apache License, Version 2.0 (the "License"). A copy of the License is included in this project and can be found in the `LICENSE` file.

## Modifications

We have modified the original Helm chart from the AWS EKS Charts repository for [describe the purpose of modifications, e.g., specific integrations, customizations for your environment, etc.].

Details of these modifications can be found in this repository.
