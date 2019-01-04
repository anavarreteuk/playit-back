class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :name, :teachers
  has_many :teachers
end
