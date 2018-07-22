class Colaborador < ApplicationRecord
  belongs_to :cargo
  validates :nome, :cidade, :bairro, :endereco, presence: true,
                                                length: { maximum: 80 }
  validates :sexo, presence: true, length: { is: 1 }
  validates :estado, presence: true, length: { is: 2 }
  validates :cpf, presence: true, numericality: true, uniqueness: true,
                  length: { is: 11 }
  validates :rg, presence: true, length: { maximum: 15 }
  validates :email,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                      on: :create }
  validates :dt_nascimento, :dt_inicio, presence: true
  validates :numero, presence: true, length: { maximum: 20 }
  validates :cep, presence: true, length: { is: 9 }
  validates :telefone, :celular, presence: true, length: { maximum: 20 }
end
