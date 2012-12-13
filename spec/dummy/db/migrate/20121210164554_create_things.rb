class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :first
      t.string :second
      t.string :third

      t.timestamps
    end
  end
end
