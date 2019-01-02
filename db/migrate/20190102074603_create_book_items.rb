class CreateBookItems < ActiveRecord::Migration[5.2]
  def change
    create_table :book_items do |t|
      t.references :book, foreign_key: true
      t.references :book_structure, foreign_key: true
      t.text :content
      t.integer :rank

      t.timestamps
    end
  end
end
