class AddActivityTimeToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :activity_time, :integer
  end
end
