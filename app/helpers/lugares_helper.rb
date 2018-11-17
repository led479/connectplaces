module LugaresHelper
  def salvar_id_pagina(pagina_id)
    session[:pagina_id] = pagina_id
  end

  def id_pagina_atual
    session[:pagina_id]
  end
end
