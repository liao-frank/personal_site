class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :img_url
      t.string :dev_link
      t.string :category

      t.timestamps
    end
  end
end
