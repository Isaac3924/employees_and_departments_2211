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

  def list_all_department_names
    @departments.map do |department|
      department.name
    end
  end

  def list_cheap_departments
    @departments.find_all do |department|
      department.expenses <= 500
    end
  end

  def list_all_employee_salaries
  
  end
end