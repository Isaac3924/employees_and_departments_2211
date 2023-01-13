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

    def assign_expense(employee, expenses_element)
      if @employees.include?(employee)
        
      end
    end
  end