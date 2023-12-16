#!/bin/sh
mysql.server start
nohup java -jar ~/code/chrome-links/chrome-links-server.jar &
