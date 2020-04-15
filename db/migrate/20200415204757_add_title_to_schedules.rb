class AddTitleToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :title, :string
  end
end
