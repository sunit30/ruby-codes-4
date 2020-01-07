require "employee"
class Startup
    attr_reader :name, :funding, :employees, :salaries

    def initialize(name,funding,salaries) 
        @name=name
        @funding=funding
        @salaries=salaries
        @employees=[]
    end

    def valid_title?(title)
        salaries.has_key?(title)
    end

    def >(other_startup)
        if self.funding> other_startup.funding
        return true
        else
        return false
        end
    end

    def hire(name,title)
        if !self.valid_title?(title)
        raise "invalid title" 
        else
        employees<<Employee.new(name,title)
        end
    end

    def size
        employees.count
    end

    def pay_employee(employee)
        if funding>=salaries[employee.title]
            employee.pay(salaries[employee.title])
            @funding-=salaries[employee.title]
        else
            raise "sorry, not enough funding"
        end
    end

    def payday
        @employees.each {|employee|self.pay_employee(employee)}
    end

    def average_salary
        sum=0
        employees.each do |employee|
            sum+=salaries[employee.title]
        end
        sum/employees.length
    end

    def close
        @employees=[]
        @funding=0
    end

    def acquire(other_startup)
        @funding+=other_startup.funding
        other_startup.salaries.each do |title,salary| 
           if !salaries.has_key?(title)
             self.salaries[title]=salary 
           end
        end
        @employees+= other_startup.employees
        other_startup.close
    end

end
