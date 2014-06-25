class Skill < ActiveRecord::Base

  belongs_to :user

  def self.search(search)
    if search
      q = "%#{search}%"
      where('skill LIKE ?',q)
    else
      scoped
    end
  end

end
