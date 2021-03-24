class Dog < ApplicationRecord
    has_many :employees

    def self.sort_by_employees
        Dog.all.sort do |dog|
            dog.employees.count
        end
    end
    
end
