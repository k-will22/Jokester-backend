class CreateAddFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :add_favorites do |t|
      t.integer :user_id
      t.integer :joke_id
      t.string :joke

      t.timestamps
    end
  end
end
