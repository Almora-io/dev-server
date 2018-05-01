#!/bin/bash

update() {
        echo "Updating";
                `echo apt-get update`;
}

install_nginx() {
        echo "Installing nginx";
                `echo apt-get install nginx`;
}

install_mongodb() {
        echo "Installing mongodb";

                `echo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927`;
                `echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list`;
                update;
                `echo apt-get install -y mongodb-org`;
       
}

install_redis() {
        echo "Installing redis";

                `echo apt-get install build-essential`;
                `echo apt-get install tcl8.5`;
                `echo apt-get install redis-server`;
}

install_nodejs() {
        echo "Installing node.js";

                # install node.js
                `echo apt-get install nodejs`;
                # install nvm
                `echo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash`;
       
}


install_git;

install_nginx;

install_mongodb;

install_redis;

install_nodejs;

echo "All done";

exit 0;