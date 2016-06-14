class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.references :author, index: true
      t.string :title
      t.integer :exemplars
      t.boolean :completed

      t.timestamps null: false
    end
    add_foreign_key :books, :authors
  end
end
