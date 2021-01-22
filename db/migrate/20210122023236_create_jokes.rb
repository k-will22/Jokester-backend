class CreateJokes < ActiveRecord::Migration[6.0]
  def change
    create_table :jokes do |t|
      t.string :joke
      t.string :category

      t.timestamps
    end
  end
end
