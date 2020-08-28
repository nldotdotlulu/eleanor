sudo apt-get update: ok
sudo apt install build-essential: ok
chrome: ok
`
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sou
sudo apt-get install google-chrome-stable
`
fish: ok
oh-my-fish: ok
omf install nvm: ok

Gogh https://github.com/Mayccoll/Gogh: ok

nodejs - nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

---

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

---

ruby: ok

python3: ok

visual studio code: ok

----------
function ga
    git add $argv
end

funcsave ga
----------

----------
function gaa
    git add .
end

funcsave gaa
----------

----------
function gcmsg
    git commit -m "$argv"
end

funcsave gcmsg
----------

----------
function gl
    git pull
end

funcsave gl
----------

----------
function gp
    git push
end

funcsave gp
----------

valentina studio: ok

docker: ok

docker-compose: ok

mongodb compass: ok

android-studio: should be installed with the script-extension package

wget: ok

curl: ok

spotify: ok

insomnia: ok

insomnia design: ok

postman: ok

discord: ok

unity - sudo apt install ubuntu-unity-desktop -y: ok

sudo apt-get install compizconfig-settings-manager compiz-plugins-extra: ok

# Cli Global: ok

yarn global add expo-cli
yarn global add json-server
yarn global add npm
yarn global add prisma
yarn global add react-native

# vscode Plugins: ok

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
