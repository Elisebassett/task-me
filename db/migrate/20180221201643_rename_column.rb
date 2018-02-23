class RenameColumn < ActiveRecord::Migration[5.1]
  def change
  	rename_column :tasks, :details, :description
  end
end
