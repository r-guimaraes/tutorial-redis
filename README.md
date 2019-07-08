### Projeto 3 - Comunicação Indireta - Aplicações Distribuídas UFG
##### Redis

O Redis é, de acordo com a documentação do site oficial (https://redis.io/), um armazenamento de estrutura de dados em memória. 
E, justamente por ser em memória, é naturalmente mais rápido do que soluções que empregam acessos em disco.
Oferece suporte a vários tipos de estruturas de dados como *strings*, *hashs*, *listas*, *bitmaps* e *streams*, dentre outros, e, alguns casos de uso frequentes do
Redis são para realização de caching, gerenciamento de sessões, aplicações publisher-subscriber, e scripts em Lua. É usado atualmente em diversas aplicações web e mobile devido à sua flexibilidade e bom desempenho.

Redis é o acrônimo de Remote Dictionary Server (Servidor de Dicionário Remoto em tradução literal). É Open Source e desenvolvido em ANSI C. Podemos ver o código fonte aqui:  https://github.com/antirez/redis.

O site oficial recomenda o uso do Redis em produção (deploy) em máquinas linux, 
e traz uma lista de ***clients*** redis de diversas linguagens de programação, recomendando algumas, e disponível aqui: https://redis.io/clients.

E nosso tutorial será utilizado a linguagem ruby. Portanto, o client redis utilizado será o https://github.com/redis/redis-rb, recomendado pelo site oficial.