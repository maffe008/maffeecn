class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :backscore
      t.integer :plotscore
      t.integer :stylescore
      t.references :book, index: true

      t.timestamps null: false
    end
    add_foreign_key :evaluations, :books
  end
end
