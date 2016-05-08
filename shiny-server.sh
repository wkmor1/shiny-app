#!/bin/sh

chown -R shiny.shiny /srv/shiny-server
env | egrep -v "^PATH=|^HOME=" >> /etc/profile
exec shiny-server >> /var/log/shiny-server.log 2>&1
