class ChangeColumnNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:items, :title, false)
  end
end
