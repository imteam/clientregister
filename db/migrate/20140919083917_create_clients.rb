class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :account_nbr
      t.string :name
      t.date :opening_date
      t.date :closing_date
      t.boolean :complete
      t.date :birthdate
      t.text :remarks
      t.date :input_date
 

      t.timestamps
    end
  end
end
