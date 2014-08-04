sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt-get -y install tmux htop vim git xchat libxss1 libappindicator1 libindicator7 postgresql virtualenvwrapper build-essential libjpeg-dev zlib1g-dev libpng12-dev
sudo apt-get -y build-dep pillow
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
mkdir ~/projects
cd ~/projects
git clone https://github.com/mostateresnet/rcrproject.git
cd rcrproject
source "$(which virtualenvwrapper.sh)"
mkvirtualenv rcrproject
pip install -r requirements.txt
./manage.py syncdb
./manage.py migrate

