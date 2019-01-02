class AddLanguageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :language, foreign_key: true
    add_column :users, :name, :string
  end
end
