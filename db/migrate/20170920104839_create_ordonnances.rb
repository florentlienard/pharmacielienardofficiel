class CreateOrdonnances < ActiveRecord::Migration[5.1]
  def change
    create_table :ordonnances do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :social_number
      t.string :photo

      t.timestamps
    end
  end
end
