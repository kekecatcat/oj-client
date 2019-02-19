#! /bin/bash
fuser -k 3000/tcp
fuser -k 5000/tcp


redis-server # at port 6379
cd ./oj-server
#npm install
npm start &

cd ../oj-client
#npm install
#ng build --watch

cd ../executor
#pip install -r requirements.txt
python executor_server.py &

echo "=============================================="
read -p "PRESS [ENTER] to terminate processes." PRESSKEY

fuser -k 3000/tcp
fuser -k 5000/tcp
redis-cli shutdown