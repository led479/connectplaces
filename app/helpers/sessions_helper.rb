module SessionsHelper

  def log_in(pessoa)
    session[:pessoa_id] = pessoa.id
  end

  def id_logado
    session[:pessoa_id]
  end

  def pessoa_logada
    if session[:pessoa_id]
      @pessoa_logada ||= Pessoa.find_by(id: session[:pessoa_id])
    end
  end

  def logged_in?
    !pessoa_logada.nil?
  end

  def log_out
    session.delete(:pessoa_id)
    @pessoa_logada = nil
  end

end
