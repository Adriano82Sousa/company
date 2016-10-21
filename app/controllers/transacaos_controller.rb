class TransacaosController < ApplicationController
  before_action :set_transacao, only: [:show, :edit, :update, :destroy]

  # GET /transacaos
  # GET /transacaos.json
  def index
    @transacaos = Transacao.all
  end

  # GET /transacaos/1
  # GET /transacaos/1.json
  def show
  end

  # GET /transacaos/new
  def new
    t = Transacao.last
	transacao = Transacao.new
	transacao.dataPagamento =  (t!= nil ? t.dataPagamento.strftime("%d/%m/%Y") : "")	
	
	@transacao = transacao
	
  end

  # GET /transacaos/1/edit
  def edit
	
  end

  # POST /transacaos
  # POST /transacaos.json
  def create
    @transacao = Transacao.new(transacao_params)

    respond_to do |format|
      if @transacao.save
        format.html { redirect_to @transacao, notice: 'Transação criada com sucesso.' }
        format.json { render :show, status: :created, location: @transacao }
      else
        format.html { render :new }
        format.json { render json: @transacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transacaos/1
  # PATCH/PUT /transacaos/1.json
  def update
    respond_to do |format|
      if @transacao.update(transacao_params)
        format.html { redirect_to @transacao, notice: 'Transação alterada com sucesso.' }
        format.json { render :show, status: :ok, location: @transacao }
      else
        format.html { render :edit }
        format.json { render json: @transacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transacaos/1
  # DELETE /transacaos/1.json
  def destroy
    @transacao.destroy
    respond_to do |format|
      format.html { redirect_to transacaos_url, notice: 'Transação apagada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transacao
      @transacao = Transacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transacao_params
      params.require(:transacao).permit(:empresa_origem_id, :empresa_destino_id, :relacaoNegocio, :formaPagameto, :dataPagamento, :documento, :valor, :dataEmissao, :justificativa)
    end
end
