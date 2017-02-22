class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :category
      t.text :intro
      t.string :cover

      t.timestamps null: false
    end
  end
end
