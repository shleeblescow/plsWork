class Runner < ApplicationRecord
    has_many :run_runner_joins
    has_many :runs, through: :run_runner_joins

    has_many :wx_cards

    # has_one_attached :profile_pic_file

    has_secure_password
end