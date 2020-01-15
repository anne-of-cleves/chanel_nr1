class AddLabelToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :label, :string
  end
end
