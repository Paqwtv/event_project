class Snooper < ApplicationRecord
	has_and_belongs_to_many :event
end
