class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email,:location,:price_hour,:lat,:lng,:instruments
  has_many :instruments
end
