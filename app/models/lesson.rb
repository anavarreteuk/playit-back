class Lesson < ApplicationRecord
    belongs_to :teacher
    belongs_to :student
    belongs_to :availability
end
