class AddAdminIdToAlerts < ActiveRecord::Migration
  def change
    add_column :alerts, :admin_id, :integer
  end
end
