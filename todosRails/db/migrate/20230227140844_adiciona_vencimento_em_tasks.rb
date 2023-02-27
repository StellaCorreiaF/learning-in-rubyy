class AdicionaVencimentoEmTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :vencimento, :datetime
    #Add coluna na tabela "Tasks", nome da coluna, tipo da coluna
  end
end
