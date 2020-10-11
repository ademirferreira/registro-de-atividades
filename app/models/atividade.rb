class Atividade < ApplicationRecord
  validates :data, :descricao, :ferramenta, :carga_horaria, presence: true

  def day
    self.data.strftime("%e/%m")
  end
end
