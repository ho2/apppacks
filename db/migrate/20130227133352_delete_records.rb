class DeleteRecords < ActiveRecord::Migration
  def self.up
    Package.destroy_all("id = 2");
  end

  def down
  end
end
