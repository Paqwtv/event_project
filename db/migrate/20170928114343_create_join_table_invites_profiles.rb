class CreateJoinTableInvitesProfiles < ActiveRecord::Migration[5.1]
  def change
    create_join_table :invites, :profiles do |t|
      # t.index [:invite_id, :profile_id]
      # t.index [:profile_id, :invite_id]
    end
  end
end
