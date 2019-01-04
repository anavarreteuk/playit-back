class StudentSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email, :password_digest, :lessons
  has_many :lessons
  
end
