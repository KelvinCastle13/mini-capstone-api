class ChangeDescriptionInProducts < ActiveRecord::Migration[7.2]
  def change
    change_column :products, :description, :text
  end
end
