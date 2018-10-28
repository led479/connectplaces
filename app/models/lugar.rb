class Lugar < ApplicationRecord
  belongs_to :pessoa

  mount_uploader :picture, PictureUploader
end
