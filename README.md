# LEIA ISTO
* Primeiramente instalar o rails seguindo o link https://nandovieira.com.br/configurando-ruby-rails-mysql-postgresql-git-no-ubuntu (até a parte que instala o rails)
* Após isto rodar o comando para instalar o sqlite3
```sh
sudo apt install libsqlite3-dev
```
* Depois entre no terminal e digite o comando para clonar o projeto
 ```sh
git clone https://github.com/led479/connectplaces.git pasta-que-ficará-o-projeto
 ```
* Depois entra na pasta e digite os comandos
```sh
bundle install && rails db:migrate
```
* Após isto é só hostear o server e acessar pelo http://localhost:3000 utilizando o comando
```sh
rails server
```