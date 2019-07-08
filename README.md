### Projeto 3 - Comunicação Indireta - Aplicações Distribuídas UFG
#### Redis
-----------

O Redis é, de acordo com a documentação do site oficial (https://redis.io/), um armazenamento de estrutura de dados em memória. 
E, justamente por ser em memória, é naturalmente mais rápido do que soluções que empregam acessos em disco.
Oferece suporte a vários tipos de estruturas de dados como *strings*, *hashs*, *listas*, *bitmaps* e *streams*, dentre outros, e, alguns casos de uso frequentes do
Redis são para realização de caching, gerenciamento de sessões, aplicações publisher-subscriber, e scripts em Lua.
É usado atualmente em diversas aplicações web e mobile devido à sua flexibilidade e bom desempenho. E pode ser usado também
para aplicações IoT (internet das coisas) e jogos.

Redis é o acrônimo de Remote Dictionary Server (Servidor de Dicionário Remoto em tradução literal). É Open Source e desenvolvido em ANSI C. Podemos ver o código fonte aqui:  https://github.com/antirez/redis.

#### Instalação
-----------
No MacOS, o **redis** pode ser instalado com o uso do [HomeBrew](https://brew.sh/index_pt-br):

`brew install redis`

No linux, é possível instalar através do apt:

`apt install redis-server`

Alternativamente, o site oficial também informa como baixar e instalar o executável:
```
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
```
Caso opte por este último método, veja mais detalhes na[ documentação oficial](https://redis.io/topics/quickstart).

Após qualquer um dos métodos, confira se a instalação foi bem sucedida utilizando o comando de teste `redis-cli ping`. Deve retornar `PONG`, conforme imagem:
![redis-cli](imgs/ping.png "Redis-CLI")

Além disso, pode-se utilizar o tutorial online e interativo do Redis para testá-lo sem precisar instalar: http://try.redis.io/

-----------

O site oficial traz uma lista de ***clients redis*** de diversas linguagens de programação, disponível aqui: https://redis.io/clients. 

Usaremos o client [redis-rb](https://github.com/redis/redis-rb), recomendado para a linguagem ruby. E faremos a comunicação indireta por meio do pub/sub, conforme
imagem:
![redis-pubsub](imgs/redis-pubsub.png "Pub-Sub")

-----------

#### Colocando em prática
Após a contextualização teórica e instalação da ferramenta, vamos criar um exemplo de pub/sub simulando a inscrição de usuários de um site numa newsletter de seu interesse, por meio do redis.

Instale as dependências do projeto ruby executando `bundle install`, que irá pegar essas dependências através do arquivo `Gemfile`.
Em seguida, execute o arquivo **sub.rb**, e já será possível subscrever a mensagens: `ruby sub.rb`. Após receber a mensagem "Iniciando subscribe na lista newsletter#1", abra outra aba no terminal
e faça um teste fazendo o publish diretamente do cli do redis: `redis-cli publish newsletter#1 "Colocar a mensagem que quiser"`. E a mensagem publicada pelo redis-cli irá aparecer no terminal do subscriber.

De modo semelhante ao print abaixo:
![redis-pubsub1](imgs/pub-sub1.png "Pub-Sub1")


##### Referências
1.  https://redis.io/
2.  https://redis.io/topics/pubsub
3.  https://aws.amazon.com/pt/redis/
4.  http://intro2libsys.com/focused-redis-topics/static/img/pub-sub-messaging.svg
5.  https://github.com/redis/redis-rb