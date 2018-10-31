class Lugar < ApplicationRecord
  belongs_to :pessoa

  mount_uploaders :pictures, PictureUploader
end
