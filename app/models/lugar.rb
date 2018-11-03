class Lugar < ApplicationRecord
  belongs_to :pessoa
  has_many :comentarios

  mount_uploaders :pictures, PictureUploader
end
