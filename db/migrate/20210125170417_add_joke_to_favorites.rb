class AddJokeToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :joke, :string
  end
end
