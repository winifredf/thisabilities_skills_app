class Skill < ActiveRecord::Base
    belongs_to :user

    validates :skill, :skill_description, presence: true
end