require 'mysql2'
require 'dotenv'

Dotenv.load

def createMysqlClient()
  @dbHost = 'db'
  @dbUser = ENV['MYSQL_USER']
  @dbPass = ENV['MYSQL_PASSWORD']
  @dbName = ENV['MYSQL_DATABASE']
  @tableName = 'user'

  return Mysql2::Client.new(:username => @dbUser, :password => @dbPass, :host => @dbHost, :database => @dbName)
end
