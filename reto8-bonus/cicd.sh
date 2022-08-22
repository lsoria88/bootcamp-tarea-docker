#!/bin/bash
set -e
git clone https://github.com/roxsross/pokepy 

# command fix
sed -i 's/=1.1.1/=2.0.2/g' pokepy/requirements.txt

cd pokepy
echo "Inicia ciclo CI/CD mini....."
docker build -t lsoria88/pokepy-example:1.0 . && echo "################################ \n Imagen build successfully... \n################################"
sleep 1
docker run -itd --name pokepy -p 5000:5000 lsoria88/pokepy-example:1.0 && echo "################################### \n Container started successfully...\n###################################"
sleep 1
docker push lsoria88/pokepy-example:1.0 && echo "############################################# \n Push image successfully..... \n#############################################"
