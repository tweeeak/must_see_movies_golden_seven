class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.string :name
      t.text :bio
      t.string :dob
      t.string :image_url
      t.string :role

      t.timestamps null: false
    end
  end
end
