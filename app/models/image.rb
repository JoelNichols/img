class Image < ActiveRecord::Base
  has_attached_file :image, :styles => { :thumb => '100x100', :medium => '300x300', :thumb => '1024x1024' }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
