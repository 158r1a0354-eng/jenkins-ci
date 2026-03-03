variable "aws_region" {
  description = "AWS region for infrastructure"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name used for tagging"
  type        = string
  default     = "aws-sre-infrastructure"
}

