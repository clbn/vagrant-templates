echo '-------------------------------------------------------------------------------'
echo 'Set up MySQL'
echo '------------'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password ToPsEcReT'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password ToPsEcReT'
sudo apt-get -y install mysql-server
