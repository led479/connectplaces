class PessoasController < ApplicationController

  # GET /pessoas/1
  def show
    @pessoa = Pessoa.find(params[:id])
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
  end

  # GET /pessoas/1/edit
  def edit
    @pessoa = Pessoa.find(params[:id])
  end


  # POST /pessoas
  def create
    @pessoa = Pessoa.new(pessoa_params)

    if @pessoa.save
      redirect_to @pessoa, notice: 'Pessoa was successfully created.'
      log_in @pessoa
    else
      #@TODO tratar params errados
      render :new
    end
  end

  # PATCH/PUT /pessoas/1
  def update
    @pessoa = Pessoa.find(params[:id])
    if @pessoa.update(pessoa_params)
      redirect_to @pessoa, notice: 'Pessoa was successfully updated.'
    else
      #@TODO tratar params errados
      render :edit
    end
  end

  # DELETE /pessoas/1
  def destroy
    @pessoa = Pessoa.find(params[:id])
    @pessoa.destroy
    redirect_to pessoas_url, notice: 'Pessoa was successfully destroyed.'
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def pessoa_params
      params.require(:pessoa).permit(:nome, :email, :password, :password_confirmation)
    end
end
