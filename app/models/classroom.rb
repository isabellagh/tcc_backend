class Classroom < ApplicationRecord
    has_many :children
    validates_presence_of :room_name, :age
    validates_uniqueness_of :room_name, message: "name must be unique"


end
