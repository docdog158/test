class CreateBooktags < ActiveRecord::Migration[6.1]
  def change
    create_table :booktags do |t|

      t.references :book, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      
      t.timestamps
    end
    
    add_index :booktags,[:book_id, :tag_id],unique: true
  end
end