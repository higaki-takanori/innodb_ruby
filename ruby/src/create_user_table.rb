require_relative './connect_db.rb'

@tableName = 'user'

client = createMysqlClient()

# テーブルの作成
client.query("CREATE TABLE IF NOT EXISTS #{@tableName} (id INT NOT NULL, name VARCHAR(32) NOT NULL, PRIMARY KEY (id))")