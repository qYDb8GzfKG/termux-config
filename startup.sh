
#!/bin/bash
export PS1="[\u@\h \t \w]\$" > /.bash_profile
termux-setup-storage
apt update -y && apt upgrade -y
pkg install -y git vim python golang wget curl bash-completion termux-api 

pip install awscli

curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-319.0.0-linux-x86_64.tar.gz
tar -xvf google-cloud-sdk-319.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh

curl https://sdk.cloud.google.com | bash
exec -l $SHELL

