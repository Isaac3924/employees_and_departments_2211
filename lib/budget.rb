class Budget
    attr_reader :year,
                :departments
  
    def initialize(year)
      @year = year.to_i
      @departments = []
    end

    def add_department(department)
      @departments << department
    end

    # def expense(ammount)
    #   @expenses += ammount
    # end
  end