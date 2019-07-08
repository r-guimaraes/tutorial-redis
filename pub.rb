require 'redis'
redis = Redis.new

lista1 = 'newsletter#1'
redis.publish lista1, "Minha mensagem super importante."