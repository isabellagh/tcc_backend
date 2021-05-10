class Classroom < ApplicationRecord
    has_many :children
    has_many :teachers
end
