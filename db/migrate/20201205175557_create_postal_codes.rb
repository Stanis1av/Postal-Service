class CreatePostalCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :postal_codes do |t|
      t.bigint :postcode
      t.string :city

      t.timestamps
    end
  end
end
