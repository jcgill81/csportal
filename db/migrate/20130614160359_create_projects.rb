class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :pm
      t.string :am
      t.string :qa

      t.timestamps
    end
  end
end
