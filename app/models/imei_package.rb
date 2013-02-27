class ImeiPackage < ActiveRecord::Base
  attr_accessible :imei, :package_id
  
  belongs_to :package
  validates_presence_of :package
  validates_uniqueness_of :package_id, :scope => [:imei] 
end
