class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :category
      t.text :intro
      t.string :cover

      t.timestamps null: false
    end
  end
end
