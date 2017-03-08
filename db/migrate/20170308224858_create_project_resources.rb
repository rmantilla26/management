class CreateProjectResources < ActiveRecord::Migration
  def change
    create_table :project_resources do |t|
      t.references :project, index: true, foreign_key: true
      t.references :resource, index: true, foreign_key: true
      t.integer :order

      t.timestamps null: false
    end
  end
end
