class CreateMailings < ActiveRecord::Migration[6.0]
  def change
    create_table :mailings do |t|
      t.string :track_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
