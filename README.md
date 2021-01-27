# COVID-19 vaccine available?

Use Selenium Remote WebDriver running in a docker container to check https://vaccinepod.nyc.gov to see if COVID-19 vaccination appointment is available.

## Goto Remote WebDriver server

http://localhost:4444/wd/hub

## Running project

Bring up both the Remote WebDriver server and a docker container to run the app.

`$ docker-compose up` 

Shell into the app server.

`$ make sh`

-- or --

`$ docker exec -it vaccinechecker_app_1 /bin/bash -l`

Install the version of Python you want to use. This is a more generic Docker with pyenv so I can install whatever version I would like to use.

`$ pyenv install 3.9.1`

`$ pyenv global 3.9.1`

`$ pip install selenium`
