class Department
    attr_reader :year,
                :employees,
                :expenses
  
    def initialize(name)
      @name = name
      @employees = []
      @expenses = 0
    end

    def hire(employee)
      @employees << employee
    end

    def expense(ammount)
      @expenses += ammount
    end
  end