# SOS JobScheduler docker compose files

## Architecture

![jobscheduler-compose arch](JobScheduler_compose.png)

## Usage

```
$ git clone https://github.com/ike-dai/jobscheduler-compose.git
$ cd jobscheduler-compose
$ vim .env # Please change your settings
$ docker-compose up -d
```

Install process, that's all!

By default, installed JobScheduler 1.13.4.
If you want to change the version, set each Dockerfile.

And you can access to JOC Cockpit by your web browser.

http://[your docker host]:4446

default JOC Cockpit username/password -> root/root

