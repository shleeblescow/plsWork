class Run < ApplicationRecord
    has_many :run_runner_joins
    has_many :runners, through: :run_runner_joins
end