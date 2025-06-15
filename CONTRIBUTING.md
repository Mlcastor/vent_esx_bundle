# Contributing (WIP)

## Setup working dev environment

Working on Windows? -> [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install)

- **Clone the repository**

```bash
git clone https://github.com/Mlcastor/VENT_ESX_Scripts.git vent_esx_scripts
```

```bash
cd vent_esx_scripts
```

- **Install dependencies**

- Install [Docker](https://docs.docker.com/get-docker/)
- Install [Docker Compose](https://docs.docker.com/compose/install/)

- **Run the development server**

```bash
docker compose up -d
```

- **Grab your docker container IP**

```bash
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' vent_esx_scripts_fxserver_1
```

- **Edit your `server.cfg`**


## Reporting Issues

## Feature Requests

## Pull Requests

## Code Style

## Testing