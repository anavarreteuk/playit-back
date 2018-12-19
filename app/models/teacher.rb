class Teacher < ApplicationRecord
    has_many :instruments
    has_many :lessons
    has_many :availabilities
end
