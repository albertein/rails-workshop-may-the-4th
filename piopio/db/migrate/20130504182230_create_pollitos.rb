class CreatePollitos < ActiveRecord::Migration
  def change
    create_table :pollitos do |t|
      t.string :name

      t.timestamps
    end
  end
end
