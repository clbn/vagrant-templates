echo '-------------------------------------------------------------------------------'
echo 'Set up Node.js'
echo '--------------'
#sudo apt-get install -y python-software-properties python g++ make software-properties-common
sudo apt-get install -y software-properties-common python-software-properties
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs
