echo '';
echo 'Welcome to Ubuntu Script';
echo '';
echo 'Ubuntu Script is open source, if you would like to help visit https://github.com/nldotdotlulu/ubuntu-script';
echo '';
echo '';
echo 'Initiating packages installation...';
echo '';
sudo apt-get update;
echo '';
echo 'Installing build essential package';
echo '';
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev;
echo '';
echo 'Installing Git';
echo '';
sudo apt install git -y;
echo '';
echo 'Installing Google Chrome';
echo '';
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list';
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -;
sudo apt-get update;
sudo apt-get install google-chrome-stable -y;
echo '';
echo 'Installing shell fish';
echo '';
sudo apt install fish -y;
echo '';
echo 'Installing shell package manager oh-my-fish';
echo '';
curl -L https://raw.githubusercontent.com/nldotdotlulu/ubuntu-script/master/fish | fish;
echo '';
echo 'Installing nvm fish shell package nvm';
echo '';
fish -c "omf install nvm";
echo '';
echo 'Installing nvm (Node version manager)';
echo '';
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash;
echo '';
echo 'Installing Node.js latest version through nvm on a containerized instance inside of fish shell (Node version manager)';
echo '';
fish -c "nvm install node";
echo '';
echo 'Setting default Node.js version on nvm (Node version manager)';
echo '';
fish -c "nvm alias default node";
echo '';
echo 'Checking installed npm version';
echo '';
fish -c "node -v; npm -v";
echo '';
echo 'If you see a version number, npm was successfully installed';
echo '';
echo 'Installing ruby';
echo '';
sudo apt install ruby-full -y
echo '';
echo 'Installing Pyenv (Python package manager)';
echo '';
curl https://pyenv.run | bash;
echo '';
echo 'Adicionando as linhas de comando abaixo ao seu shell (will be added soon)';
# echo 'text here' >> filename
echo '
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
';
echo '';
echo 'Instalando Visual Studio Code';
echo '';
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg;
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/;
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list';
sudo apt-get install apt-transport-https -y;
sudo apt-get update;
sudo apt-get install code -y;
echo '';
echo 'Adding ga gaa gcmsg gl gp to your fish shell instance';
echo '';
fish -c "
function ga
    git add $argv
end;
funcsave ga;
function gaa
    git add .
end;
funcsave gaa;
function gcmsg
    git commit -m "$argv"
end;
funcsave gcmsg;
function gl
    git pull
end;
funcsave gl;
function gp
    git push
end;
funcsave gp;
";
echo '';
echo 'Downloading Valentina Studio';
echo '';
wget https://github.com/nldotdotlulu/valentina-studio-mirror/raw/master/vstudio_x64_10_lin.deb;
echo '';
echo 'Installing Valentina Studio';
echo '';
sudo dpkg -i vstudio_x64_10_lin.deb;
echo '';
echo 'Installing Docker';
echo '';
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable";
sudo apt-get update;
sudo apt-get install docker-ce -y;
sudo apt install docker-compose -y;
sudo groupadd docker;
sudo usermod -aG docker $USER;
echo '';
echo 'Installing MongoDB Compass';
echo '';
wget https://downloads.mongodb.com/compass/mongodb-compass_1.21.2_amd64.deb;
sudo dpkg -i mongodb-compass_1.21.2_amd64.deb;
echo '';
echo 'Installing Spotify';
echo '';
sudo snap install spotify;
echo '';
echo 'Installing Insomnia Designer & Insomnia Core';
echo '';
sudo snap install insomnia-designer;
sudo snap install insomnia;
echo '';
echo 'Installing Postman from Postman Inc.';
echo '';
sudo snap install postman;
echo '';
echo 'Installing Discord from Discord Inc.';
echo '';
sudo snap install discord --classic;
echo '';
echo 'Installing Unity ui';
echo '';
sudo apt install ubuntu-unity-desktop -y;
sudo apt --fix-broken install -y;
sudo apt install ubuntu-unity-desktop -y;
echo '';
echo 'Installing Compiz';
echo '';
sudo apt-get install compizconfig-settings-manager compiz-plugins-extra -y;
sudo apt --fix-broken install -y;
sudo apt-get install compizconfig-settings-manager compiz-plugins-extra -y;
echo '';
echo 'Installing fish-yvm (Yarn Version Manager written in Fish 🐟) https://github.com/cideM/fish-yvm';
echo '';
fish -c "omf install https://github.com/cideM/fish-yvm.git";
echo '';
echo 'Installing yarn through fish-yvm (Yarn Version Manager written in Fish 🐟) https://github.com/cideM/fish-yvm';
echo '';
fish -c "yvm use latest";
echo '';
echo 'Now installing yarn packages expo-cli json-server prisma react-native';
echo '';
fish -c "yarn global add expo-cli json-server prisma react-native";
echo '';
echo 'Installing Visual Studio Code plugins';
echo '';
code --install-extension alexcvzz.vscode-sqlite;
code --install-extension dbaeumer.vscode-eslint;
code --install-extension dracula-theme.theme-dracula;
code --install-extension EditorConfig.EditorConfig;
code --install-extension esbenp.prettier-vscode;
code --install-extension jpoissonnier.vscode-styled-components;
code --install-extension ms-python.python;
code --install-extension naumovs.color-highlight;
code --install-extension octref.vetur;
code --install-extension PKief.material-icon-theme;
code --install-extension Prisma.prisma;
code --install-extension ritwickdey.LiveServer;
code --install-extension rocketseat.rocketseatreactjs;
code --install-extension rocketseat.rocketseatreactnative;
echo '';
echo 'Set fish as default shell';
echo '';
bash -c "chsh -s `which fish`";
echo '';
echo 'Installing shell color scheme Gogh, you need to select a color scheme now, access: https://mayccoll.github.io/Gogh/ and select one';
echo '';
sudo apt-get install dconf-cli uuid-runtime -y;
number=03
echo $number | bash -c "$(wget -qO- https://git.io/vQgMr)"
echo '';
echo 'Everything setup, Thanks for using ubuntu-script!';
echo '';
echo 'Packages installed:';
echo 'this feature will be added soon...';
echo '';
echo 'Ubuntu Script is open source, if you would like to help visit https://github.com/nldotdotlulu/ubuntu-script';
echo '';
