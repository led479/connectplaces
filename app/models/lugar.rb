class Lugar < ApplicationRecord
  belongs_to :pessoa
  has_many :comentarios, dependent: :delete_all

  validates_presence_of :nome, :tipo, :descricao, :estado, :cidade, :endereco

  mount_uploaders :pictures, PictureUploader

  def media_nota
    nota = 0.0
    num_notas = 0
    self.comentarios.each do |comentario|
      if comentario.nota
        nota += comentario.nota
        num_notas += 1
      end
    end
    if num_notas == 0
      return nil
    else
      return nota/num_notas
    end
  end
end
