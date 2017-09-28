class ChatRoom < ApplicationRecord
	belongs_to :event, polymorphic: true #???
	has_and_belongs_to_many :profiles
end
