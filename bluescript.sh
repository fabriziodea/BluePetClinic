#!/bin/bash

sudo npm install --global yarn
git clone https://github.com/fabriziodea/angular-cli.git /home/ubuntu/angular-cli
cd /home/ubuntu/angular-cli
yarn
yarn build —-local
sudo npm install -g @angular/cli@latest
