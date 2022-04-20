class AtividadesController < ApplicationController
  before_action :set_atividade, only: [:show, :edit, :update, :destroy]

  def index
    @atividades = Atividade.where("data >= ?", Date.today)    
  end

  def show
  end

  def new
    @atividade = Atividade.new
  end

  def edit
  end

  def create
    @atividade = Atividade.new(atividade_params)
 
      if @atividade.save
        redirect_to @atividade, notice: 'Atividade adicionada com sucesso.'
      else
        render :new
      end
    
  end

  def update
    
      if @atividade.update(atividade_params)
        redirect_to @atividade, notice: 'Atividade atualizada com sucesso.'
      else
        render :edit
      end
  end


  def destroy
    @atividade.destroy
      redirect_to atividades_url, alert: 'Atividade excluída com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atividade
      @atividade = Atividade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atividade_params
      params.require(:atividade).permit(:data, :descricao, :ferramenta, :carga_horaria)
    end
end
