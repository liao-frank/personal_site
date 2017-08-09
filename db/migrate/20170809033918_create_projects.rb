class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :subtitle
      t.text :snippet
      t.text :description
      t.string :dates
      t.string :collaboration
      t.string :cover_url
      t.integer :order
      t.string :visibility
      t.string :site_link
      t.string :github_link

      t.timestamps
    end
  end
end
