class CreateArrivalTimes < ActiveRecord::Migration
  def change
    create_table :arrival_times do |t|
      t.datetime :time
      t.boolean :lateness
      t.timestamps null: false
    end
  end
end
