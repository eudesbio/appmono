class AndamentosController < ApplicationController
  before_action :set_andamento, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /andamentos
  # GET /andamentos.json
  def index
    andamentos = []
    if current_user.admin === true
      @andamentos = Andamento.all
    else
      Andamento.all.each do |andamento|
        usuario = Produto.find(andamento.produto_id).user_id
         if current_user.id == usuario
           andamentos << andamento
         end
      end
      @andamentos = andamentos
    end
  end

  # GET /andamentos/1
  # GET /andamentos/1.json
  def show
  end

  # GET /andamentos/new
  def new
    @andamento = Andamento.new
  end

  # GET /andamentos/1/edit
  def edit
  end

  # POST /andamentos
  # POST /andamentos.json
  def create
    @andamento = Andamento.new(andamento_params)

    respond_to do |format|
      if @andamento.save
        format.html { redirect_to @andamento, notice: 'Andamento was successfully created.' }
        format.json { render :show, status: :created, location: @andamento }
      else
        format.html { render :new }
        format.json { render json: @andamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /andamentos/1
  # PATCH/PUT /andamentos/1.json
  def update
    respond_to do |format|
      if @andamento.update(andamento_params)
        format.html { redirect_to @andamento, notice: 'Andamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @andamento }
      else
        format.html { render :edit }
        format.json { render json: @andamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /andamentos/1
  # DELETE /andamentos/1.json
  def destroy
    @andamento.destroy
    respond_to do |format|
      format.html { redirect_to andamentos_url, notice: 'Andamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_andamento
      @andamento = Andamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def andamento_params
      p "==================================="
      p params
      p "==================================="
      params.require(:andamento).permit(:produto_id, :analisado, :consertado, :testado, :entregue, :data)
    end
end
