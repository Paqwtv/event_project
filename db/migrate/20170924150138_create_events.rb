class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.belongs_to :profile, index: true
      t.string :author
      t.string :title
      t.string :description
      t.string :date_time
      t.string :geotag
      t.string :acsess_level

      t.timestamps
    end
  end
end
