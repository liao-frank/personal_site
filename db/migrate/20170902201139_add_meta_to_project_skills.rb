class AddMetaToProjectSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :project_skills, :meta, :boolean
  end
end
