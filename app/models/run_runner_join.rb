class RunRunnerJoin < ApplicationRecord
    belongs_to :runner
    belongs_to :run
end