#description
workbench practice

#you can use pipenv to manager the python package
create virtual env
>pipenv shell

show which env is using
>which python 


## Init Loacl ENV

### install pipenv & virtualenv
```
pip install --user pipenv
pip install virtualenv
```

### init virtualenv 
```shell script
cd /project/dir
virtualenv venv
source ./venv/bin/activate
```

### install requirements
```shell script
pip install -r requirements.txt
```


### Workbench usage

#### Start

```
cd ~/.data-workbench/bin
./start.sh
```

### Stop

```
./stop.sh
```

### Restart

```
./start.sh
docker exec workbench-container bash -c 'cd /app/dataplat/ && rm /root/airflow/run/*.pid && ./lib/dp start-airflow 8082'
```

### If the task fail, need to add the dependencies

```
common/*, lib/deps.zip
```