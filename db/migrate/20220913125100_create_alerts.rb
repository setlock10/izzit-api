class CreateAlerts < ActiveRecord::Migration[6.1]
  def change
    create_table :alerts do |t|
      t.integer   :movie_id
      t.integer   :user_id
      t.string    :movie_title
      t.timestamps
    end
  end
end
