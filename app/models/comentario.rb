class Comentario < ApplicationRecord
  belongs_to :pessoa
  belongs_to :lugar
end
