## Preparando ambiente

- Gerar imagem do docker do backend service
```sh
cd Dockerfile_backend
docker build -t acr-backend-service .
cd..
```

- Gerar imagem do docker do servico de autenticacao
```sh
cd Dockerfile_auth
docker build -t acr-auth .
cd..
```

- Gerar imagem do docker do nginx
```sh
cd Dockerfile_nginx
docker build -t acr-nginx .
cd..
```

- Rodar docker-compose
```sh
docker-compose up -d
```

- Troubleshooting
    - Pode ser necessario executar os comandos docker com permissao `sudo`
    - Pode ser necessario usar o `docker compose` no lugar de `docker-compose`

## Usando o ambiente

- Usar o [postman-collection](https://github.com/andreruizrt/acr-gateway/blob/main/DashboardRequest.postman_collection.json)
- Ao chamar o endpoint de Login, já ira setar automaticamente o token para as proximas requests
