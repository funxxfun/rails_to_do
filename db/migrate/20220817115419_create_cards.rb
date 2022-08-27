class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      
      t.string    :title, null: false, limit: 255
      t.text      :memo, limit: 1000
      t.references  :list, null: false, foreign_kye: true

      t.timestamps
    end
  end
end