require "redis"

## Assume que redis-server está rodando localhost, na porta padrão (6379)
redis = Redis.new

lista1 = 'newsletter#1'

puts "============================================"
puts "Iniciando subscribe na lista #{lista1} ... "

redis.subscribe lista1 do |on|
  on.message do |channel, message|
    puts "Nova mensagem de [#{channel}]: #{message}"
  end
end