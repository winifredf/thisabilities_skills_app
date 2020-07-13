class RenameColumns < ActiveRecord::Migration
  def change
    rename_column :skills, :title, :skill
    rename_column :skills, :body, :skill_description
  end
end