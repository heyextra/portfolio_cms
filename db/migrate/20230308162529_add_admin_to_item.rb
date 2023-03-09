class AddAdminToItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :admin, null: false, foreign_key: true
  end
end
