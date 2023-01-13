require './lib/employee'

RSpec.describe Employee do
  let(:bobbi){ Employee.new( {name: "Bobbi Jaeger", 
                             age: "30", 
                             salary: "$100000"} ) }

  describe 'iteration1' do
    it '#initializes' do  
      expect(bobbi).to be_a(Employee)
    end

    it 'has attributes' do  
      expect(bobbi.name).to eq("Bobbi Jaeger")
      expect(bobbi.age).to eq(30)
      expect(bobbi.salary).to eq(100000)
      expect(bobbi.expense_responsibilty_list).to eq( {} )
      expect(bobbi.total_expense_responsibilty).to eq(0)
    end

    it '#give_raise' do  
      bobbi.give_raise(5000)

      expect(bobbi.salary).to eq(105000)
    end

    it '#assign_expense' do  
      bobbi.assign_expense(400, 'department1')
      bobbi.assign_expense(30, 'department2')

      expect(bobbi.expense_responsibilty_list).to eq( {'department1' => 400,
                                                       'department2' => 30} )
      expect(bobbi.total_expense_responsibilty).to eq(430)
    end
  end
end