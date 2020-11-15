class ProdutosController < ApplicationController
  before_action :get_user
  before_action :set_produto, only: [:show, :edit, :update, :destroy]

  # GET /produtos
  # GET /produtos.json
  def index
    @produtos = @user.produtos
    # era @produtos = Produto.all
  end

  # GET /produtos/1
  # GET /produtos/1.json
  def show
  end

  # GET /produtos/new
  def new
    @produto = @user.produtos.build
    # era @produto = Produto.new
  end

  # GET /produtos/1/edit
  def edit
  end

  # POST /produtos
  # POST /produtos.json
  def create
    @produto = @user.produtos.build(produto_params)
    # era @produto = Produto.new(produto_params)

    respond_to do |format|
      if @produto.save
        format.html { redirect_to user_produtos_url(@user), notice: 'Produto was successfully created.' }
        # era format.html { redirect_to @produto, notice: 'Produto was successfully created.' }
        format.json { render :show, status: :created, location: @produto }
      else
        format.html { render :new }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produtos/1
  # PATCH/PUT /produtos/1.json
  def update
    respond_to do |format|
      if @produto.update(produto_params)
        format.html { redirect_to user_produtos_url(@user), notice: 'Produto was successfully updated.' }
        # era format.html { redirect_to @produto, notice: 'Produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @produto }
      else
        format.html { render :edit }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.json
  def destroy
    @produto.destroy
    respond_to do |format|
      format.html { redirect_to (user_produtos_url(@user)), notice: 'Produto was successfully destroyed.' }
      # era format.html { redirect_to produtos_url, notice: 'Produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def get_user
      @user = User.find(params[:user_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = @user.produtos.find(params[:id])
      # era @produto = Produto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def produto_params
      params.require(:produto).permit(:nome, :quantidade, :data_validade, :tipos_de_quantidade)
      # era params.require(:produto).permit(:nome, :quantidade, :data_validade, :tipos_de_quantidade, :user_id)
    end
end
