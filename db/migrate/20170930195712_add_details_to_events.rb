class AddDetailsToEvents < ActiveRecord::Migration[5.1]
  def change
	  change_column :events, :acsess_level, 'boolean USING CAST(acsess_level AS boolean)'
	  change_column_null :events, :acsess_level, false
  end
end
