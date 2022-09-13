class AlertsController < ApplicationController
    set :default_content_type, 'application/json'

    get "/alerts" do
        alerts = Alert.all
        alerts.to_json
      end
    


end