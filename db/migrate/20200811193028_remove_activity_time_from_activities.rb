class RemoveActivityTimeFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :activity_time, :integer
  end
end
