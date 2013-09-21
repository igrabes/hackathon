class ChangeNameOfSave < ActiveRecord::Migration
  def change
    rename_column :player_mlbs, :save, :saves
  end

end
