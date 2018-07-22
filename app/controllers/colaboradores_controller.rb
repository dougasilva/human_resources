class ColaboradoresController < ApplicationController
  before_action :set_colaborador, only: %i[show edit update destroy]
  def index
    @colaboradores = Colaborador.all
  end

  def show; end

  def new
    @colaborador = Colaborador.new
  end

  def edit; end

  def create
    @colaborador = Colaborador.new(colaborador_params)
    if @colaborador.save
      respond_with @colaborador
    else
      render :new
    end
  end

  def update
    @colaborador = Colaborador.new(colaborador_params)
    if @colaborador.save
      respond_with @colaborador
    else
      render :edit
    end
  end

  def destroy
    @colaborador.destroy
    respond_with @colaborador
  end

  private
  
  def set_colaborador
    @colaborador = Colaborador.find(params[:id])
  end

  def colaborador_params
    params.require(:colaborador).permit(:nome, :sexo, :dt_nascimento, :estado,
                                        :cpf, :rg, :numero, :compl, :cep, :foto,
                                        :cidade, :endereco, :telefone, :celular,
                                        :email, :bairro, :dt_inicio, :dt_saida,
                                        :cargo_id)
  end
end
