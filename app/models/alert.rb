class Alert <ActiveRecord::Base
    belongs_to :movie
    belongs_to :user

    def self.get_alerts
        Alert.all.map{|a| {alert_id: a.id, movie_title: a.movie.title, user_email:a.user.email, updated: a.updated_at}}
    end


    def removeAlert
        self.destroy
    end



end