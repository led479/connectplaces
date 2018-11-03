module LugaresHelper
  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
  end
  def salvar_id_pagina(pagina_id)
    session[:pagina_id] = pagina_id
  end

  def id_pagina_atual
    session[:pagina_id]
  end
end
