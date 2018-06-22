class CreateColaboradores < ActiveRecord::Migration[5.1]
  def change
    create_table :colaboradores do |t|
      t.string :nome
      t.string :sexo
      t.date :dt_nascimento
      t.string :cpf
      t.string :rg
      t.string :endereco
      t.string :numero
      t.string :compl
      t.string :cep
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :telefone
      t.string :celular
      t.string :email
      t.string :foto
      t.date :dt_inicio
      t.date :dt_saida

      t.timestamps
    end
  end
end
