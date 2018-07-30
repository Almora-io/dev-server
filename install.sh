#!/bin/bash

update() {
        echo "Updating";
        `echo sudo apt-get update`;
        `echo export LC_ALL=C;`
}

install_nginx() {
        echo "Installing nginx";
                `echo sudo apt-get install nginx`;
}

install_mongodb() {
        echo "Installing mongodb";
                `echo sudo apt-get install  mongodb`
#                 `echo sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927`;
#                 `echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list`;
#                 update;
#                 `echo sudo apt-get install -y mongodb-org`;

}

install_redis() {
        echo "Installing redis";

                `echo sudo apt-get install build-essential`;
                `echo sudo apt-get install tcl8.5`;
                `echo sudo apt-get install redis-server`;
}

install_nodejs() {
        echo "Installing node.js";

                # install node.js
                `echo sudo apt-get install nodejs`;
                `echo sudo apt-get install npm`;
                # install nvm
                 `echo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash;`
                 `export NVM_DIR="$HOME/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";`
}

install_nodemodules(){
        echo "Installing essential node modules";
        `echo npm i -g gulp`;
        `echo npm i -g bower`;
        `echo npm i -g pm2`;
}



install_git;

install_nginx;

install_mongodb;

install_redis;

install_nodejs;

install_nodemodules;

echo "All done";

exit 0;
