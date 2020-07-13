class RenameColumns < ActiveRecord::Migration
  def change
    rename_column :skills, :title, :body
    rename_column :skills, :skill, :skill_description
  end
end