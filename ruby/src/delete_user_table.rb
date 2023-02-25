require_relative './connect_db.rb'

@tableName = 'user'

client = createMysqlClient()

# テーブルの削除
client.query("DROP TABLE #{@tableName}")