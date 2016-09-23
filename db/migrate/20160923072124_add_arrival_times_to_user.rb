class AddArrivalTimesToUser < ActiveRecord::Migration
  def change
    add_reference :arrival_times, :user, index: true
  end
end
