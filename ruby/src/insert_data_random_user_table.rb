require_relative './connect_db.rb'
require 'random_name_generator'
require 'securerandom'

@tableName = 'user'

client = createMysqlClient()
rng = RandomNameGenerator.new
# データの挿入
for id in 1..10000 do
  randomId = SecureRandom.random_number(50000000)
  name = rng.compose(3)
  client.query("INSERT INTO #{@tableName} VALUES (#{randomId}, '#{name}')")
end
