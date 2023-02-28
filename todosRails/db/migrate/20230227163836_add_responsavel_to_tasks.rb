class AddResponsavelToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :responsavel, :string
  end
end
