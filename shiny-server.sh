#!/bin/sh

chown -R shiny.shiny /srv/shiny-server
exec shiny-server >> /var/log/shiny-server.log 2>&1
