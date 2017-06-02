class AddFieldsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :notification_type, :string
    add_column :users, :notification_freq, :string
    add_column :users, :has_daily, :boolean
    add_column :users, :has_weekly, :boolean
    add_column :users, :has_monthly, :boolean
  end
end
