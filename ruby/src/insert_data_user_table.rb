require_relative './connect_db.rb'
require 'random_name_generator'

@tableName = 'user'

client = createMysqlClient()
rng = RandomNameGenerator.new

# データの挿入
for id in 1..10000 do
  name = rng.compose(3)
  client.query("INSERT INTO #{@tableName} VALUES (#{id}, '#{name}')")
end