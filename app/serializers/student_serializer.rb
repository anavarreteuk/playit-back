class StudentSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email, :lessons
  has_many :lessons
end
