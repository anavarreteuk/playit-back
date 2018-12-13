class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email, :instruments
  has_many :instruments
end
