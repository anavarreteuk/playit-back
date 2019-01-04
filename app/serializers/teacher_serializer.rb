class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email, :location, :price_hour, :lat, :lng, :instruments
  has_many :instruments
  has_many :availabilities
  attribute :booking_avalability

  def booking_avalability
    self.object.availabilities_in_week('11022019')
  
  end

end
