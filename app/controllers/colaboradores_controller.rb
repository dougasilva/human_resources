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

    respond_to do |format|
      if @colaborador.save
        format.html { redirect_to @colaborador, notice: 'Colaborador criado.' }
        format.json { render :show, status: :created, location: @colaborador }
      else
        format.html { render :new }
        format.json { render json: @colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @colaborador.update(colaborador_params)
        format.html { redirect_to @colaborador, notice: 'Colaborador atualizado.' }
        format.json { render :show, status: :ok, location: @colaborador }
      else
        format.html { render :edit }
        format.json { render json: @colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @colaborador.destroy
    respond_to do |format|
      format.html { redirect_to colaboradores_url, notice: 'Colaborador excluído.' }
      format.json { head :no_content }
    end
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
