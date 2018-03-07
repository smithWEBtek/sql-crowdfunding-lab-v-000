require_relative 'environment'
require 'pry'

class SQLRunner
  def initialize(db)
    @db = db
  end

  def execute_create_sql
    sql = File.read('lib/create.sql')
    @db.execute_batch(sql)
  end

  def execute_insert_sql
    sql = File.read('lib/insert.sql')
    @db.execute_batch(sql)
  end

	def execute_data
		sql = File.read('lib/data.sql')
		puts "Reading the data.sql file."
    @db.execute_batch(sql)
  end
end
