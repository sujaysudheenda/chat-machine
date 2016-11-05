class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.references :group_chat, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
