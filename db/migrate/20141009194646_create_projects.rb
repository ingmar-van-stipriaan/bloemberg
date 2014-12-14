class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :short_description
      t.text :description
      t.string :image
      t.timestamps
    end
  end
end
