class CreateCheckIn < ActiveRecord::Migration[5.1]
  def change
    create_table :check_ins do |t|
      t.string :sheck_in_url

      t.timestamps
    end
  end
end
