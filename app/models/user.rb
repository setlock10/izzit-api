class User <ActiveRecord::Base
    has_many :alerts
    has_many :movies, through: :alerts
end