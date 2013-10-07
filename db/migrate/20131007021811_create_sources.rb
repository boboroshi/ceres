class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :name
      t.string :url
      t.string :email
      t.string :telephone
      t.text :address
      t.text :notes

      t.timestamps
    end
  end
end
