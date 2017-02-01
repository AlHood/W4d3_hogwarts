require( 'pg') 
require_relative("../db/sql_runner")

class House
attr_reader :id
attr_accessor :house_name, :logo_url

def initialize(options)
  @id = options['id'].to_i if options['id'] != nil
 @house_name = options['house_name']
  @logo_url = options['logo_url']
 
end


def save()
  sql = "INSERT INTO houses (house_name, logo_url) VALUES ('#{@house_name}', '#{@logo_url}') RETURNING *;"
  house = SqlRunner.run( sql ).first
    @id = house['id'].to_i
  end


  def self.all()

    sql = "SELECT * FROM houses;"
    houses = SqlRunner.run(sql)
    return houses.map { |house| House.new(house)}
  end


  def self.find(id)
    sql = "SELECT * FROM houses WHERE id=#{id.to_i};"
    house = SqlRunner.run(sql)
    result = House.new( house.first)
    return result 
  end






end







