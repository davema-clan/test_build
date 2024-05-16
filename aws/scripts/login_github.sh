SECRETS_GITHUB_TOKEN=$(aws ssm get-parameters --region ap-southeast-1 --names GITHUB-token --with-decryption --query Parameters[0].Value | jq -r '.')
GITHUB_ACTOR=$(aws ssm get-parameters --region ap-southeast-1 --names GITHUB_ACTOR --with-decryption --query Parameters[0].Value)
echo "$SECRETS_GITHUB_TOKEN" | docker login ghcr.io -u $GITHUB_ACTOR --password-stdin