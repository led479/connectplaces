class SessionsController < ApplicationController
  def new
  end

  def create
    pessoa = Pessoa.find_by(email: params[:session][:email].downcase)
    if pessoa && pessoa.authenticate(params[:session][:password])
      log_in pessoa
      redirect_to pessoa
    else
      flash.now[:danger] = 'Email ou Senha incorretos'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
