class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text   :description
      t.string :link
      t.string :tags
      t.timestamps
    end
  end
end
