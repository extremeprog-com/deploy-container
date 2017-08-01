#!/bin/bash

cd /root/app/server
bash -c "PORT=80 forever start server.js"

sleep infinity
