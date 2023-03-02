class RunnerSerializer < ActiveModel::Serializer
    attributes :username, :name, :neighborhood, :age, :bio, :running_deets, :id
    has_many :runs
end