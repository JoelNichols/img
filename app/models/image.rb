class Image < ActiveRecord::Base
  has_attached_file :image, :styles => { :thumb => '300x300', :medium => '1024x1024' }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  obfuscate_id
end
