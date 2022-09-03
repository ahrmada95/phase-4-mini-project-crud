class CreateSpices < ActiveRecord::Migration[6.1]
  def change
    create_table :spices do |t|
      t.text :title
      t.text :image
      t.text :description
      t.text :notes
      t.float :rating

      t.timestamps
    end
  end
end
