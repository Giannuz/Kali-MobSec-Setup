sudo apt update

sudo apt-get install jadx
sudo apt-get install dex2jar
sudo apt-install jd-gui
sudo apt-get install jd-gui

# to install mobsf we need docker
sudo apt install docker.io
docker pull opensecurity/mobile-security-framework-mobsf

# APKHunt section
git clone https://github.com/Cyber-Buddy/APKHunt.git
cd APKHunt
sudo apt install golang-go


# SEBASTiAn section
cd ..
git clone https://github.com/talos-security/SEBASTiAn
cd SEBASTiAn && virtualenv -p python3 venv
source venv/bin/activate
python3 -m pip install -r src/requirements.txt

#charles
wget -qO- https://www.charlesproxy.com/packages/apt/charles-repo.asc | sudo tee /etc/apt/keyrings/charles-repo.asc
sudo sh -c 'echo deb [signed-by=/etc/apt/keyrings/charles-repo.asc] https://www.charlesproxy.com/packages/apt/ charles-proxy main > /etc/apt/sources.list.d/charles.list'
sudo apt-get update && sudo apt-get install charles-proxy

#  apk-mitm

# installs NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# download and install Node.js
nvm install 20

# verifies the right Node.js version is in the environment
node -v # should print `v20.13.1`

# verifies the right NPM version is in the environment
npm -v # should print `10.5.2`

sudo apt-get install default-jdk

npm install -g apk-mitm


# Frida
sudo apt install python3-pip
sudo pip3 install --upgrade frida-tools
wget https://github.com/frida/frida/releases/download/16.2.1/frida-server-16.2.1-android-arm64.xz -P /home/michele/Downloads

# Objection
sudo pip3 install --upgrade objection


# drozer
wget https://github.com/WithSecureLabs/drozer/releases/download/3.0.2/drozer-3.0.2-py3-none-any.whl -P /home/michele/Downloads
sudo apt install python3.11-venv
pipx install /home/michele/Downloads/drozer-3.0.2-py3-none-any.whl


# to add to alias 
echo "alias mobsf='sudo docker run -it -p 8000:8000 opensecurity/mobile-security-framework-mobsf:latest'" >> ~/.zshrcgo 
echo "alias apkhunt='go run /home/michele/APKHunt/apkhunt.go'" >> ~/.zshrcgo
