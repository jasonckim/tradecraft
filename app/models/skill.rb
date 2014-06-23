class Skill < ActiveRecord::Base

  belongs_to :user

  def self.search(search)
    if search
      where(:conditions => ['name LIKE ?', "%#{search}%"])
    else
      :lol

    end
  end

end
