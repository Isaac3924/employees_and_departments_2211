require './lib/budget'
require './lib/department'
require './lib/employee'

RSpec.describe Budget do
  let(:budget1){ Budget.new( "2023" ) }

  let(:customer_service){ Department.new( "Customer Service" ) }
  let(:party_department){ Department.new( "Party Department" ) }
  let(:tax_evasion){ Department.new( "Tax Evasion Department" ) }
  let(:human_resources){ Department.new( "Human Resources" ) }
  
  let(:bobbi){ Employee.new( {name: "Bobbi Jaeger", 
                             age: "30", 
                             salary: "100000"} ) }

  let(:aaron){ Employee.new( {name: "Aaron Tanaka", 
                             age: "25", 
                             salary: "90000"} ) }
  
  let(:slurms){ Employee.new( {name: "Slurms MacKenzie", 
                             age: "49", 
                             salary: "200000"} ) }

  let(:bob){ Employee.new( {name: "Bob Thorpe", 
                             age: "53", 
                             salary: "1000"} ) }
                            
  let(:andrew){ Employee.new( {name: "Andrew Ryan", 
                             age: "51", 
                             salary: "42000"} ) }

  let(:glados){ Employee.new( {name: "GLaDOS", 
                             age: "24", 
                             salary: "63000"} ) }

  let(:jack){ Employee.new( {name: "Jack Hans", 
                             age: "36", 
                             salary: "45000"} ) }
  describe 'iteration3' do
    it '#initializes' do  
      expect(budget1).to be_a(Budget)
    end

    it 'has attributes' do  
      expect(budget1.year).to eq(2023)
      expect(budget1.departments).to eq( [] )
    end

    before do
      customer_service.expenses(10)
      party_department.expenses(420)
      tax_evasion.expenses(500000000)
      human_resources.expenses(1500)

      customer_service.hire(bobbi)
      customer_service.hire(aaron)
      party_department.hire(slurms)
      tax_evasion.hire(bob)
      tax_evasion.hire(andrew)
      human_resources.hire(glados)
      human_resources.hire(jack)

      budget1.add_department(customer_service)
      budget1.add_department(party_department)
      budget1.add_department(tax_evasion)
      budget1.add_department(human_resources)
    end

    it '#add_department' do 
      expect(budget1.departments).to eq( [customer_service, party_department, tax_evasion, human_resources] )
    end

    it '#list_all_department_names' do  
      expect(budget1.list_all_departments).to eq(["Customer Service", "Party Department", "Tax Evasion Department", "Human Resources"])
    end
    
    it '#list_cheap_departments' do  
      expect(budget1.list_cheap_departments).to eq( [customer_service, party_department] )
    end

    it '#list_employee_salaries' do
      expect(budget1.list_employee_salaries).to eq( {bobbi => bobbi.salary,
                                                     aaron => aaron.salary
                                                     slurms => slurms.salary
                                                     bob => bob.salary
                                                     andrew => andrew.salary
                                                     glados => glados.salary
                                                     jack => jack.salary} )
    end
  end
end