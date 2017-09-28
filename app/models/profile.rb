class Profile < ApplicationRecord
	belongs_to :user
	has_many :events
	has_and_belongs_to_many :invites
	has_and_belongs_to_many :categories
	# has_and_belongs_to_many :chat_rooms
	# has_many :chat_rooms, through :event
end
