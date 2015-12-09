class Photo < ActiveRecord::Base
  mount_uploader :photo_image, PhotoUploader
  
end
