class CreateProjectImages < ActiveRecord::Migration[5.1]
  def change
    create_table :project_images do |t|
      t.integer :project_id
      t.text :caption
      t.string :img_url
      t.integer :order

      t.timestamps
    end
  end
end
