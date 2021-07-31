class ClientsController < ApplicationController
  before_action :set_cliente, only: %w[show edit update destroy]
  def index
    @clientes = Client.all.order(:id)
  end

  def new
    @cliente = Client.new
  end

  def create
    @cliente = Client.new(client_params)
    respond_to do |format|
      if @cliente.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @cliente.errors.full_messages, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @cliente.update(client_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @cliente.error.full_messages, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  def destroy
    @cliente.destroy
    respond_to do |format|
      format.json { head :no_content }
      format.js
    end
  end

  private

  def set_cliente
    @cliente = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:nome, :logradouro, :numero, :bairro, :complemento, :cidade, :uf, :telefone)
  end
end
