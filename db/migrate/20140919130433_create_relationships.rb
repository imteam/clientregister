class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :account_id
      t.string :name
      t.string :firstname
      t.integer :relationship_type
      t.datetime :since
      t.datetime :deleted_since
      t.text :address
      t.integer :domicile
      t.integer :nationality
      t.date :birthdate

      t.timestamps
    end
  end
end
