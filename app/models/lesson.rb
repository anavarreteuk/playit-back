class Lesson < ApplicationRecord
    has_many :teachers
    belongs_to :student
    belongs_to :availability
end
