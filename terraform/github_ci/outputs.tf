# 다음 단계에서 GitHub Actions용 IAM 역할에 연결
output "oidc_provider_arn" {
  value       = aws_iam_openid_connect_provider.github.arn
  description = "GitHub Actions 인증용 OIDC Provider ARN"
}

# 게시와 배포 점검 역할이 같은 저장소·브랜치 식별 조건을 사용하도록 공유합니다.
output "github_oidc_subject" {
  value = var.github_oidc_subject
}

# AWS 생성 후 GitHub Actions 변수에 등록할 역할 ARN
output "github_actions_role_arn" {
  value       = aws_iam_role.github_actions.arn
  description = "GitHub Actions의 ECR 업로드용 IAM 역할 ARN"
}
