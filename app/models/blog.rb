class Blog < ActiveRecord::Base
  mount_uploader :picture, AvatarUploader
end
