class ChangeDefaultScoreToZero < ActiveRecord::Migration
  def change
    change_column_default(:posts, :score, 0)
  end
end
