class AddColumnToWords < ActiveRecord::Migration
  def change
    add_column :words, :normalized, :string
  end
end
