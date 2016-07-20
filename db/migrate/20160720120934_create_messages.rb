class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :from, null: false
      t.integer :to, null: false
      t.text :body
      t.timestamps
    end
  end
end
