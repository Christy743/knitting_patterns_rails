class AddCategoryIdToPatterns < ActiveRecord::Migration[5.1]
  def change
    add_column :patterns, :category_id, :integer
  end
end
