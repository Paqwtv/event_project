class Event < ApplicationRecord
	belongs_to :profile
	has_one :snooper
	has_and_belongs_to_many :categories
	has_many :chat_rooms
end
