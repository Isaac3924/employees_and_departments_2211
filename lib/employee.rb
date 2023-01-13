class Employee
  attr_reader :name,
              :age,
              :salary,
              :expense_responsibilty_list,
              :total_expense_responsibilty

  def initialize(attribute_hash)
    @name = attribute_hash[:name]
    @age = attribute_hash[:age].to_i
    @salary = attribute_hash[:salary].delete("$").to_i
    @expense_responsibilty_list = Hash.new{ |key, value| key[value] = 0 }
    @total_expense_responsibilty = 0
  end

  def give_raise(raise)
    @salary += raise
  end

  def assign_expense(expense, department)
    @expense_responsibilty_list[department] = expense
    @total_expense_responsibilty += expense
  end
end