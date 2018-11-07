# LEIA ISTO
* Primeiramente instalar o rails seguindo o link https://nandovieira.com.br/configurando-ruby-rails-mysql-postgresql-git-no-ubuntu (pule a parte do MySQL e PostgreSQL e pare após instalar o rails e o nodejs)
* Após isto rodar o comando para instalar o sqlite3 e as dependências
```sh
sudo apt install libsqlite3-dev
sudo apt install image-magick gcc libcurl4-openssl-dev libxml2-dev -y
```
* Depois entre no terminal e digite o comando para clonar o projeto
 ```sh
git clone https://github.com/led479/connectplaces.git connectplaces
 ```
* Depois entra na pasta e digite os comandos
```sh
bundle install && rails db:migrate
```
* Após isto é só hostear o server e acessar pelo http://localhost:3000 utilizando o comando
```sh
rails server
```
