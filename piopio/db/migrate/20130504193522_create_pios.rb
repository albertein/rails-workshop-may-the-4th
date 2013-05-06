class CreatePios < ActiveRecord::Migration
  def change
    create_table :pios do |t|
      t.integer :pollito_id
      t.string :message

      t.timestamps
    end
  end
end
