class AddLearnTagToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :learntag, :string
  end
end
