class Student < ApplicationRecord
    has_secure_password
    has_many :lessons
    has_many :teachers, through: :lessons
end
