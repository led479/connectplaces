class Lugar < ApplicationRecord
  belongs_to :pessoa
  has_many :comentarios, dependent: :delete_all

  validates_presence_of :nome, :tipo, :descricao, :estado, :cidade, :endereco

  mount_uploaders :pictures, PictureUploader
end
