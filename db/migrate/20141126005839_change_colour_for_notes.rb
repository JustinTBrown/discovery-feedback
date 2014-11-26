class ChangeColourForNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :colour, :integer
    add_column :notes, :colour, :string
  end
end
