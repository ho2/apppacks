class CreateImeiPackages < ActiveRecord::Migration
  def change
    create_table :imei_packages do |t|
      t.integer :package_id
      t.string :imei

      t.timestamps
    end
  end
end
