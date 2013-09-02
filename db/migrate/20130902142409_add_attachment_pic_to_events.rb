class AddAttachmentPicToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :pic
    end
  end

  def self.down
    drop_attached_file :events, :pic
  end
end
