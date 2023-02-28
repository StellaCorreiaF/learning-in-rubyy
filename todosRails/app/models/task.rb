class Task < ApplicationRecord
  has_rich_text :descricao
  scope :completas, -> { where(executada: true)}
  scope :incompletas, -> { where(executada: [false, nil])}
  belongs_to :topico
end
