class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :am
      t.string :pm
      t.string :qa
      t.string :name
      t.string :client
      t.string :team
      t.string :jira
      t.string :conf

      t.timestamps
    end
  end
end
