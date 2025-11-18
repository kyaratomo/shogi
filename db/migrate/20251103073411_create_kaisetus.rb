class CreateKaisetus < ActiveRecord::Migration[7.2]
  def change
    create_table :kaisetus do |t|
      t.timestamps
    end
  end
end
