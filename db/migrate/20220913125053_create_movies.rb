class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string    :imdb_id
      t.string    :title
      t.integer   :year
    end
  end
end
