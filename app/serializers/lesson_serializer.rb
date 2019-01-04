class LessonSerializer < ActiveModel::Serializer
  attributes :id, :teacher_id, :student_id, :date,:availability_id, :availability, :teacher
  belongs_to :availability
  belongs_to :teacher
end
