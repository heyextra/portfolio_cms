class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.string :title
      t.text   :description
      t.string :link
      t.string :tags
      t.string :category_id, foreign_key: true

      t.timestamps
    end
  end
end
