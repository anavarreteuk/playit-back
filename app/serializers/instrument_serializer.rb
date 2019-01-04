class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :name, :teacher
  belongs_to :teacher
end
