class AddDescriptionToTaks < ActiveRecord::Migration[8.1]
  def change
    add_column :taks, :description, :text
  end
end
