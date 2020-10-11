class ArquivosController < ApplicationController
  def index
    @atividades = Atividade.all.order(:data => :desc).group_by(&:day)
  end
end
