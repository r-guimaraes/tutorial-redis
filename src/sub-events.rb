require "redis"

redis = Redis.new

lista2 = 'newsletter#2'

puts "============================================"
puts "Iniciando subscribe na lista #{lista2} ... "
puts "Escutando eventos"
puts "============================================"

redis.subscribe lista2 do |on|

  ### Disparado quando chega uma nova mensagem do publisher
  on.message do |channel, msg|
    puts "(#{Time.now}) Nova mensagem de [#{channel}]: #{msg}"

    ## Sai da lista (unsub) se a requisição para o canal vier como "SAIR"
    if msg == "SAIR"

      # Comando que remove o cliente da lista
      redis.unsubscribe lista2
    end
  end

  ### Disparado quando ocorre uma nova inscrição (novo subscriber)
  on.subscribe do |channel, subs|
    puts "(#{Time.now}) Nova inscrição (sub) no canal ##{channel}."
  end

  ### Disparado quando algum subscriber cancela a inscrição
  on.unsubscribe do |channel, subs|
      puts "(#{Time.now}) Inscrição cancelada (unsub) do canal ##{channel}"
  end

end