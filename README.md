#description
workbench practice

## Resource of the class

https://drive.google.com/drive/folders/1ma4zv2eOQlODQ81aOaDoSC1PxT3072MI

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

#### Stop

update the stop script, change the `down` to `stop`

```
./stop.sh
```

#### Restart

```
./start.sh
docker exec workbench-container bash -c 'cd /app/dataplat/ && rm /root/airflow/run/*.pid && ./lib/dp start-airflow 8082'
```

#### If the task fail, need to add the dependencies

```
common/*, lib/deps.zip
```

#### docker container connect the host
use the host: `host.docker.internal` in the container

#### manually update the `testXX` host

The generate code does not work for the host, so we need change it to `host.docker.internal` in the code. 

#### When ingest in airflow, change the code path

`self.base_path = '/root/dataplat/workflow/minibank'`
`self.base_path = '/app/dataplat/workflow/minibank'`

#### Airflow start config

```json
{"data_date":20220102}
```