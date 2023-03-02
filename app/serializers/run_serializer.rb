class RunSerializer < ActiveModel::Serializer
    attributes :id, :run_location, :when, :mileage, :run_type, :pace, :creator_id, :bevs_after, :notes
    has_many :runners
end