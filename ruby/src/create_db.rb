require 'mysql2';
require 'dotenv';

Dotenv.load

@dbHost = "db"
@dbUser = "user"
@dbPass = "p@ssw0rd"
@dbName = "test_db"
@tableName = "user"

client = Mysql2::Client.new(:username => @dbUser, :password => @dbPass, :host => @dbHost, :database => @dbName)

# テーブルの作成
client.query("CREATE TABLE IF NOT EXISTS #{@tableName} (id int, name varchar(32), PRIMARY KEY (id))")

# データの挿入
client.query("INSERT INTO #{@tableName} (id, name) VALUES (1, 'testuser1')")