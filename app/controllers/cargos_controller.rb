class CargosController < ApplicationController
  before_action :set_cargo, only: %i[show edit update destroy]

  def index
    @cargos = Cargo.all
  end

  def show; end

  def new
    @cargo = Cargo.new
  end

  def edit; end

  def create
    @cargo = Cargo.new(cargo_params)
    if @cargo.save
      respond_with @cargo
    else
      render :new
    end
  end

  def update
    @cargo = Cargo.new(cargo_params)
    if @cargo.save
      respond_with @cargo
    else
      render :new
    end
  end

  def destroy
    @cargo.destroy
    respond_with @cargo
  end

  private
  
  def set_cargo
    @cargo = Cargo.find(params[:id])
  end

  def cargo_params
    params.require(:cargo).permit(:nome, :descricao)
  end
end
