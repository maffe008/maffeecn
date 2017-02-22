class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :category
      t.string :picture

      t.timestamps null: false
    end
  end
end
