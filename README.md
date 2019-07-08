### Projeto 3 - Comunicação Indireta
##### Redis

O Redis é, de acordo com a documentação do site oficial (https://redis.io/), um armazenamento de estrutura de dados em memória. 
E, justamente por ser em memória, é naturalmente mais rápido do que soluções que empregam acessos em disco.
Oferece suporte a vários tipos de estruturas de dados como *strings*, *hashs*, *listas*, *bitmaps* e *streams*, dentre outros, e, alguns casos de uso frequentes do
Redis são para realização de caching, transações, aplicações publisher-subscriber, e scripts em Lua.

Ele é Open Source e desenvolvido em ANSI C. Podemos ver o código fonte aqui:  https://github.com/antirez/redis.

O site oficial recomenda ainda o uso dele em produção (deploy) em máquinas linux, 
e traz uma lista de ***clients*** redis de diversas linguagens de programação, indicando ainda as mais estáveis. A lista está disponível aqui: https://redis.io/clients