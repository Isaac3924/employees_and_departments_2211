class Department
    attr_reader :name,
                :employees,
                :expenses,
                :listed_expenses
  
    def initialize(name)
      @name = name
      @employees = []
      @expenses = 0
      @listed_expenses = []
    end

    def hire(employee)
      @employees << employee
    end

    def expense(ammount)
      @expenses += ammount
      @listed_expenses << ammount
    end

    def assign_expense_to_employee(employee, expenses_element)
      if @employees.include?(employee)
        expense = @listed_expenses[expenses_element]
        
        employee.assign_expense(expense, self)
      else
        "Employee not in this department."
      end
    end
  end