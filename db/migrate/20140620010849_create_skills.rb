class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.text :bio
      t.string :pic
      t.string :skill
      t.string :tolearn
      t.integer :user_id

      t.timestamps
    end
  end
end
