class Child < ApplicationRecord
    belongs_to :classroom
    belongs_to :teacher, optional: true
end
