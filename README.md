# Imagens Docker para o Portal e Editor de Serviços

Este repositório contém `Dockerfile`s e configurações do Docker Compose para a criação de um ambiente contendo o Portal e o Editor de Serviços com balanceamento de carga, *fail-over* e monitoramento.

Para utilizá-lo, é necessário ter instalados:

- Docker, 1.8 ou superior
- Docker-Compose, 1.4 ou superior
- Bash

## Configuração de SSL

Para o correto funcionamento do balanceador de carga, é preciso ter dentro da pasta *balanceador/*  um arquivo chamado SERVICOSGOVBR.pem

## Build 

Para efetuar o build dos contêiners, é necessário executar o comando abaixo:

```
./build-all
```

## Iniciar os contêineres

Para iniciar os contêineres e analisar os logs na console, execute o comando abaixo: 

```
docker-compose up 
```

Para iniciar os contêiners em modo background, sem visualizar os logs na console, execute o comando abaixo:

```
docker-compose up -d
```

## Troubleshooting

Caso tenha iniciado o ambiente em modo background existe uma forma de analisar os logs do contêiner em execução:

```
docker logs -f nome_do_contêiner
```
