class Movie <ActiveRecord::Base
    has_many :alerts
    has_many :users, through: :alerts

 



end