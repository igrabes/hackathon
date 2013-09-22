class CreatePostData < ActiveRecord::Migration
  def change
    create_table :post_data do |t|
      t.text :table_html
      t.integer :post_id

      t.timestamps
    end
  end
end
