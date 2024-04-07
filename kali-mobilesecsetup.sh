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





# to add to alias 
echo "alias mobsf='sudo docker run -it -p 8000:8000 opensecurity/mobile-security-framework-mobsf:latest'" >> ~/.zshrcgo 
echo "alias apkhunt='go run /home/michele/APKHunt/apkhunt.go'" >> ~/.zshrcgo