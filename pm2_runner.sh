#!/bin/bash
if ! type pm2 > /dev/null
then
  sudo npm install -g pm2 && sudo pm2 start server.js --name=BackendAPI
else
  sudo pm2 restart BackendAPI
fi
