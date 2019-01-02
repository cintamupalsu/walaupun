class AddAncestryToBookItems < ActiveRecord::Migration[5.2]
  def change
    add_column :book_items, :ancestry, :string
    add_index :book_items, :ancestry
  end
end
