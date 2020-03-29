class AddAcidityToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :acidity, :decimal
  end
end
