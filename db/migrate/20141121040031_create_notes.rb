class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :text
      t.integer :likes
      t.integer :colour

      t.timestamps
    end
  end
end
