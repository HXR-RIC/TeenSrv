class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.integer :experience
      t.string :description
      t.references :teenager, foreign_key: true

      t.timestamps
    end
  end
end