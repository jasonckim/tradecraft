class RemovePartsFromSkills < ActiveRecord::Migration
  def change
  
    remove_column :skills, :bio, :text
    remove_column :skills, :pic, :string

  end
end
