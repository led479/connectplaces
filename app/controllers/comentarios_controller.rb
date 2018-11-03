class ComentariosController < ApplicationController

  # Será chamado dentro da página do lugar
  def create
    @comentario = Comentario.new(comentario_params)
    if @comentario.save
      redirect_to lugar_url(id_pagina_atual)
    end

  end

  def destroy
  end

  private

  def comentario_params
    params_comentario = params.require(:comentario).permit(:texto, :nota)
    params_lugar = { lugar_id: id_pagina_atual}
    params_pessoa = { pessoa_id: id_logado }
    params_comentario.merge(params_lugar).merge(params_pessoa)
  end
end
