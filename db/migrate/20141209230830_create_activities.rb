class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :project_id
      t.text :description
      t.date :started_at
      t.date :ended_at

      t.timestamps
    end
  end
end
