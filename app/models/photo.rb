class Photo < ActiveRecord::Base
  belongs_to :missing_person
  has_attached_file :photo_attachment, :styles => { :medium => "640x480>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
