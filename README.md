# Processo SEPLAG

Autor: Rodrigo Schecheli Bussolo

Foi desenvolvido o projeto para participar do projeto Seplag (PSS 02/2025/SEPLAG), aqui você vai encontrar o XPZ com todo o código fonte do Genexus, foi desenvolvido na versão 17U8. 

Para rodar a aplicação, baixe todo o projeto do Git e com o Docker aberto já rodando na maquina execute o comando:

```
docker-compose up -d
```

Obs: Será inicializado o Tomcat na portal 8080, o Postgres na 5432 e o Minio na 9000, para o funcionamento garanta que esteja liberado estas portas.

Assim que for executado o docker, será iniciado o postgres e já será executado os scripts iniciais para funcionar a aplicação, sendo que estes scripts estão dentro da pasta scritps com o nome "init.sql", onde nele vai ter a estrutura das tabelas, que foi gerado pelo proprio Genexus e além disso já irá carregar dados nas tabelas, onde foi utilizado uma IA para gerar estes registros. Para se autenticar ao sistema foi criado o usuário chamado "admin" com a senha "admin", para utilização das API é necessário primeiro realizar a autenticação de login, onde será gerado uma chave de acesso, que deve ser utilizado no "Authorize" do swagger, sendo que esta chave irá se expirar em 5 minutos, podendo assim o usuário logar novamente ou utilizar a outra chave, para renovar a chave de acesso.

Obs: Para conexão com o min.io nesta versão do genexus, foi necessário a criação de uma lib externa feita em Java, o Jar já esta dentro do War da aplicação, sendo que o código também esta anexado junto a este Git na pasta "integracao-minio".

Para acessar o swagger da aplicação utilize o link:

```
http://localhost:8080/processo_seplag/swagger-ui/
```
