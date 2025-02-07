- Gerar imagem do docker do backend service
```sh
cd Dockerfile_backend
docker build -t acr-backend-service .
```

- Gerar imagem do docker do servico de autenticacao
```sh
cd Dockerfile_auth
docker build -t acr-auth .
```

- Gerar imagem do docker do nginx
```sh
cd Dockerfile_nginx
docker build -t acr-nginx .
```

- Rodar docker-compose
```sh
docker-compose up -d
```

- Troubleshooting
    - Pode ser necessario executar os comandos docker com permissao `sudo`
    - Pode ser necessario usar o `docker compose` no lugar de `docker-compose`


## curl 

- Criar usuario
```
curl --location 'http://127.0.0.1:80/auth/api/users' \
--header 'Content-Type: application/json' \
--data '{
    "username": "admin",
    "password": "admin"
}'
```

- Realizar login
```
curl --location 'http://127.0.0.1:80/auth/api/login' \
--header 'Content-Type: application/json' \
--data '{
    "username": "admin",
    "password": "admin"
}'
```
- Copiar Token

- Acessar rota autenticada
```
curl --location 'http://127.0.0.1/backend-service/api/grupos' \
--header 'Authorization: Bearer [TOKEN_LOGIN]'
```

# TODO
- Documentar outras rotas para testar


