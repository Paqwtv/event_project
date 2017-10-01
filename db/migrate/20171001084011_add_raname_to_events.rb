class AddRanameToEvents < ActiveRecord::Migration[5.1]
  def change
  	change_table :events do |t|
  		t.rename :acsess_level, :private
		end
  end
end
