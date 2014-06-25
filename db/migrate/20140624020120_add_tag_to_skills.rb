class AddTagToSkills < ActiveRecord::Migration
  def change

    add_column :skills, :tag, :string

  end
end
