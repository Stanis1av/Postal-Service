class CreateMailings < ActiveRecord::Migration[6.0]
  def change
    create_table :mailings do |t|

      t.timestamps
    end
  end
end
