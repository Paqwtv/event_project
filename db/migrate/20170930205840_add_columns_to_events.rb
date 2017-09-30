class AddColumnsToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :contacts, :string
    add_column :events, :checked_by_as, :smallint
    add_column :events, :secret_key, :string
  end
end
