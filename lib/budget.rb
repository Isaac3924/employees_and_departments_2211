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
    employee_salary = Hash.new{ |key, value| key[value] = 0 }

    @departments.each do |department|
      department.employees.each do |employee|
        employee_salary[employee] = employee.salary
      end
    end

    employee_salary
  end

  def list_employee_expenses_responsbility
    'ran out of time would need to iterate thru departments then employees'
  end
end