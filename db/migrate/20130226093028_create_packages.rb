class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :action
      t.string :packageName
      t.integer :versionNumber
      t.string :downloadPath
      t.string :packageNamePath
      t.string :packageNotation
      t.boolean :forceUpdate

      t.timestamps
    end
  end
end
