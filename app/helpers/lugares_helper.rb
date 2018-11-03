module LugaresHelper
  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17"
  end
  def salvar_id_pagina(pagina_id)
    @pagina_atual = pagina_id
  end

  def id_pagina_atual
    @pagina_atual
  end
end
