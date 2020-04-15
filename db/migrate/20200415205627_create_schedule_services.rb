class CreateScheduleServices < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_services do |t|
      t.references :service, foreign_key: true
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end
