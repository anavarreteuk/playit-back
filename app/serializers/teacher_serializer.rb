class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email,:location,:price_hour,:lat,:lng,:instruments,:availabilities
  has_many :instruments
  has_many :availabilities
end
