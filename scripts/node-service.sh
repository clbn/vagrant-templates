echo '-------------------------------------------------------------------------------'
echo 'Set up Node.js service'
echo '----------------------'

sudo apt-get install -y upstart

sudo cat > /etc/init/nodejs.conf <<EOF
description "Node.js service"
start on (local-filesystems and net-device-up)
stop on shutdown
respawn
respawn limit 5 60
exec /usr/bin/node /vagrant/app.js >> /var/log/nodejs-service.log 2>&1
EOF

sudo start nodejs
