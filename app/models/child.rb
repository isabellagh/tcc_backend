class Child < ApplicationRecord
    belongs_to :classroom, optional: true
    # belongs_to :user, optional: true
    validates_presence_of :name, :age, :avatar
end
