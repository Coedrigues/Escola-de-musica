class AlunosinstrumentosController < ApplicationController
  before_action :set_alunosinstrumento, only: [:show, :edit, :update, :destroy]

  # GET /alunosinstrumentos
  # GET /alunosinstrumentos.json
  def index
    @alunosinstrumentos = Alunosinstrumento.all
  end

  # GET /alunosinstrumentos/1
  # GET /alunosinstrumentos/1.json
  def show
  end

  # GET /alunosinstrumentos/new
  def new
    @alunosinstrumento = Alunosinstrumento.new
  end

  # GET /alunosinstrumentos/1/edit
  def edit
  end

  # POST /alunosinstrumentos
  # POST /alunosinstrumentos.json
  def create
    @alunosinstrumento = Alunosinstrumento.new(alunosinstrumento_params)

    respond_to do |format|
      if @alunosinstrumento.save
        format.html { redirect_to @alunosinstrumento, notice: 'Alunosinstrumento was successfully created.' }
        format.json { render :show, status: :created, location: @alunosinstrumento }
      else
        format.html { render :new }
        format.json { render json: @alunosinstrumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alunosinstrumentos/1
  # PATCH/PUT /alunosinstrumentos/1.json
  def update
    respond_to do |format|
      if @alunosinstrumento.update(alunosinstrumento_params)
        format.html { redirect_to @alunosinstrumento, notice: 'Alunosinstrumento was successfully updated.' }
        format.json { render :show, status: :ok, location: @alunosinstrumento }
      else
        format.html { render :edit }
        format.json { render json: @alunosinstrumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alunosinstrumentos/1
  # DELETE /alunosinstrumentos/1.json
  def destroy
    @alunosinstrumento.destroy
    respond_to do |format|
      format.html { redirect_to alunosinstrumentos_url, notice: 'Alunosinstrumento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alunosinstrumento
      @alunosinstrumento = Alunosinstrumento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alunosinstrumento_params
      params.require(:alunosinstrumento).permit(:aluno_id, :instrumento_id)
    end
end
