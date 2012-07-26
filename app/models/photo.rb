class Photo < ActiveRecord::Base
  attr_accessible :description, :file
  has_attached_file :file, :styles => { :default => "600x600#" }
end
