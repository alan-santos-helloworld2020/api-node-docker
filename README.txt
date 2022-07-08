Rio de Janeiro 08/06/2022

Projeto api-node com banco fake "em memória"

Fala Dev, espero que esteja tudo bem!
este é pequeno projeto para teste e estudo de dockerização de api com node

####
Para gerar a imagem rode na raiz do projeto o comando

docker build -t api-node .

em seguida o comando

docker run --rm -d -p 3000:3000/tcp api-node:latest

 E abra o navegador no endereço http://localhost:3000
se tudo correr certo um array vazio será retornado
[]

####
 Os formatos para envio aos endpoints são dinâmicos, porém sempre
irão setar as propriedades  id e data , id e a data serão setados automaticamente

Este é um exemplo modelo que utilizei
{
    "id": 1,
    "data": "08/07/2022",
    "nome": "fulano",
    "telefone": "(21)00000-0000",
    "email": "fulano@gmail.com",
    "cep": "00000-000"
}


Métodos

GET = http://localhost:3000

GET/id = http://localhost:3000/id

POST = http://localhost:3000
{
    body
}

PUT = http://localhost:3000/id
{
    body
}

DELETE = http://localhost:3000/id 

