class CreateTeenagers < ActiveRecord::Migration[5.1]
  def change
    create_table :teenagers do |t|
      t.string :skills
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end