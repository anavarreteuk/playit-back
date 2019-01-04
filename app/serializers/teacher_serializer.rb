class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email, :location, :price_hour, :lat, :lng, :instrument
  belongs_to :instrument
  has_many :availabilities
  attribute :booking_avalability

  def booking_avalability
    self.object.availabilities_in_week('11022019')
  
  end

end
