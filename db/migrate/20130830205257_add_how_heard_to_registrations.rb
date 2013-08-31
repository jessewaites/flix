class AddHowHeardToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :how_heard, :string
  end
end
