class AddIndexToImeiPackages < ActiveRecord::Migration
  def change
    add_index :imei_packages, :imei
  end
end
