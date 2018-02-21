class CreateSubtasks < ActiveRecord::Migration[5.1]
  def change
    create_table :subtasks do |t|
      t.boolean :complete
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
