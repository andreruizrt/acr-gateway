## Projetos

- [Dashboard code in Java](https://github.com/kielsonzinn/Dashboard-gestao-API)
- [Runner code in Python](https://github.com/andreruizrt/automatic-code-review-dashboard-runner/tree/kafka_consumer)

## Preparando ambiente

- Rodar docker-compose
```sh
docker-compose up --build
```

- Troubleshooting
    - Pode ser necessario executar os comandos com permissao `sudo`
    - Pode ser necessario usar o `docker compose` no lugar de `docker-compose`

## Usando o ambiente

- Usar o [postman-collection](https://github.com/andreruizrt/acr-gateway/blob/main/DashboardRequest.postman_collection.json)
- Ao chamar o endpoint de Login, já ira setar automaticamente o token para as proximas requests

## TODO

-  Finalizar README.md
    - Imagem da arquitetura

- Deixar o runner 100%
    - Fazer gerar pelo menos uma issue

- Desenvolver
    - No auth, endpoint que so retorna o nome do usuario
    - No gestao, ajustar o executor para gravar o nome do usuario usando feign client
    - No auth, endpoint que so diz se ta autenticado    
