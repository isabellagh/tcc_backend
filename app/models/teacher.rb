class Teacher < ApplicationRecord
    belongs_to :classroom
    has_many :children
end
