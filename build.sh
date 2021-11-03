git clone https://github.com/plankanban/planka.git
cd planka
git pull
git apply planka-config.patch
docker build . -t tasks
