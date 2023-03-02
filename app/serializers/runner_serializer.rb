class RunnerSerializer < ActiveModel::Serializer
    attributes :username, :name, :neighborhood, :age, :bio, :running_deets
    has_many :runs
end