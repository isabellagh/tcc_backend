class Classroom < ApplicationRecord
    has_many :children
    has_many :teachers


    # def full?(students)
    #   if students > 10
    #     flash[:error] = "Classroom is full!"
    #   end 
    # end 
end
