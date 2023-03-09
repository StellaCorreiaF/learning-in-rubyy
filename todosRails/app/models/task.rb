class Task < ApplicationRecord
  has_rich_text :descricao
  scope :completas, -> { where(executada: true)}
  scope :incompletas, -> { where(executada: [false, nil])}
  validates :titulo, length: { minimum: 3 }, uniqueness: true
  belongs_to :topico
  belongs_to :user

end
