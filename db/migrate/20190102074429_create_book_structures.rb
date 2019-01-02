class CreateBookStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :book_structures do |t|
      t.references :book, foreign_key: true
      t.string :level
      t.integer :rank

      t.timestamps
    end
  end
end
