class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.references :area, index: true, foreign_key: true
      t.integer :order

      t.timestamps null: false
    end
  end
end
