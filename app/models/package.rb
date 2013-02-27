class Package < ActiveRecord::Base
  attr_accessible :action, :downloadPath, :forceUpdate, :packageName, :packageNamePath, :packageNotation, :versionNumber
  
  validates_uniqueness_of :packageName
  has_many :imei_packages
end
