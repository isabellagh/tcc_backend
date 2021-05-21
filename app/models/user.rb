class User < ApplicationRecord
    has_secure_password

    has_many :classrooms, dependent: :destroy
    has_many :children, through: :classrooms

  validates :email, uniqueness: { case_sensitive: false }
end
