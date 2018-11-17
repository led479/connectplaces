class LugaresController < ApplicationController

  # GET /lugares
  def index
    @lugares = if params[:term]
      Lugar.where('tipo LIKE ? OR nome LIKE ? OR cidade LIKE ? OR estado LIKE ? OR endereco LIKE ?',
                  "%#{params[:term]}%", "%#{params[:term]}%", "%#{params[:term]}%",
                  "%#{params[:term]}%", "%#{params[:term]}%")
    else
      Lugar.all
    end

  end

  # GET /lugares/{id}
  def show
    salvar_id_pagina(params[:id])
    @lugar = Lugar.find(params[:id])
    @comentario = Comentario.new
  end


  # SHOW
  def new
    @lugar = Lugar.new
  end

  # POST /lugares
  def create
    @lugar = pessoa_logada.lugares.build(lugar_params)

    if @lugar.save
      redirect_to @lugar
    else
      #@TODO tratar params errados
      render :new
    end
  end

  # GET /lugares/{id}
  def edit
    @lugar = Lugar.find(params[:id])
  end

  # PUT /lugares/{id}
  def update
    @lugar = Lugar.find(params[:id])
    if @lugar.update_attributes(params)
      redirect_to @lugar
    else
      #@TODO tratar params errados
      render :edit
    end
  end

  def destroy
    @lugar = Lugar.find(params[:id])
    @lugar.destroy
    redirect_to root_url
  end

  private

  def lugar_params
    params.require(:lugar).permit(:nome, :descricao, :cidade, :estado, :endereco, :tipo, :term, pictures: [])
  end
end
