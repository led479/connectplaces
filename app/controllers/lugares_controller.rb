class LugaresController < ApplicationController
  def index
    @lugares = Lugar.all
  end

  def show
    @lugar = Lugar.find(params[:id])
  end

  def new
    @lugar = Lugar.new
  end

  def create
    @lugar = @pessoa_logada.lugares.build(lugar_params)

    if @lugar.save
      redirect_to @lugar
    else
      #tratar params errados
    end
  end

  def edit
    @lugar = Lugar.find(params[:id])
  end

  def update
    if @lugar.update_attributes(params)
      redirect_to @lugar
    else
      #tratar params errados
    end
  end

  def delete
    @lugar = Lugar.find(params[:id])
    if @lugar.destroy
      redirect_to root_path
    else
      #nao conseguiu deletar ???
    end
  end

  private

  def lugar_params
    params.require(:lugar).permit(:nome, :descricao, :cidade, :estado, :endereco, :tipo)
  end
end
