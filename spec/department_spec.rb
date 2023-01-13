require './lib/department'
require './lib/employee'

RSpec.describe Department do
  let(:customer_service){ Department.new( "Customer Service" ) }
  
  let(:bobbi){ Employee.new( {name: "Bobbi Jaeger", 
                             age: "30", 
                             salary: "100000"} ) }

  let(:aaron){ Employee.new( {name: "Aaron Tanaka", 
                             age: "25", 
                             salary: "90000"} ) }
  describe 'iteration2' do
    it '#initializes' do  
      expect(customer_service).to be_a(Department)
    end

    it 'has attributes' do  
      expect(customer_service.name).to eq("Customer Service")
      expect(customer_service.employees).to eq( [] )
      expect(customer_service.employees).to eq( [] )
    end

    it '#hire' do  
      customer_service.hire(bobbi)
      customer_service.hire(aaron)


      expect(customer_service.employees).to eq([bobbi, aaron])
    end

    it '#expense' do
      customer_service.expense(100)
      customer_service.expense(25)

      expect(customer_service.expenses).to eq(125)
      expect(customer_service.listed_expenses).to eq([100, 25])
    end
  end
end