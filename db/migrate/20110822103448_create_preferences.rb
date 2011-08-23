class CreatePreferences < ActiveRecord::Migration
  def self.up
    create_table :preferences do |t|
      t.string :country
      t.string :city
      t.string :slug
      t.boolean :show_email, :default => true
      t.integer :contact_number
      t.boolean :show_contact_number, :default => false 
      t.integer :user_id
      t.text :address

      t.timestamps
    end
  end

  def self.down
    drop_table :preferences
  end
end
