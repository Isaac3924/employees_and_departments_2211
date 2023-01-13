class Employee
  attr_reader :name,
              :age,
              :salary

  def initialize(attribute_hash)
    @name = attribute_hash[:name]
    @age = attribute_hash[:age].to_i
    @salary = attribute_hash[:salary].delete("$").to_i
  end

  def give_raise(raise)
    @salary += raise
  end
end