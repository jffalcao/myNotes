apt-get update

# Install cf client, curl, git, jq (json parser/prettyfier), siege (HTTP load tester)
apt-get install -y \
  apt-transport-https \
  build-essential \
  ca-certificates \
  software-properties-common \
  curl \
  git \
  wget \
  vim