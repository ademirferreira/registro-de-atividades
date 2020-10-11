class Atividade < ApplicationRecord
  validates :data, :descricao, :ferramenta, :carga_horaria, presence: true

  def day
    self.created_at.strftime("%e %b, %Y")
  end
end
