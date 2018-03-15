class CreateWobs < ActiveRecord::Migration[5.1]
  def change
    create_table :wobs do |t|
      t.text :text

      t.timestamps
    end
  end
end
