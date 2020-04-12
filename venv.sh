curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install nodejs
sudo apt install python3
sudo apt install python3-pip
sudo python3 -m pip uninstall virtualenv
sudo apt-get update
sudo apt install nodejs
sudo apt install npm
sudo apt-get install build-essential libssl-dev libffi-dev python-dev
sudo pip3 install virtualenv
sudo python3 -m pip install virtualenv

CONFIG_FILE='configuration.ini'


source <(grep FRONTEND_FOLDER_PATH $CONFIG_FILE)
FRONTEND_FOLDER_PATH=$FRONTEND_FOLDER_PATH

source <(grep BACKEND_FOLDER_PATH $CONFIG_FILE)
BACKEND_FOLDER_PATH=$BACKEND_FOLDER_PATH

source <(grep ENV_FILE_PATH $CONFIG_FILE)
ENV_FILE_PATH=$ENV_FILE_PATH

source <(grep PACKAGE_PATH $CONFIG_FILE)
PACKAGE_PATH=$PACKAGE_PATH

cd $FRONTEND_FOLDER_PATH

npm_path=$(which npm)

$npm_path install



cd $BACKEND_FOLDER_PATH

virtualenv_path=$(which virtualenv)

$virtualenv_path $ENV_FILE_PATH

chmod 777 $PACKAGE_PATH

source $ENV_FILE_PATH/bin/activate

pip_path=$(which pip3)

$pip_path install -r $PACKAGE_PATH




