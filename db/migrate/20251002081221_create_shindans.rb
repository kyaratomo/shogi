class CreateShindans < ActiveRecord::Migration[7.2]
  def change
    create_table :shindans do |t|
      t.string :question1
      t.string :question2
      t.string :question3

      t.timestamps
    end
  end
end
