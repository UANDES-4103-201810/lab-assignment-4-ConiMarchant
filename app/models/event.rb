class Event < ApplicationRecord
	belongs_to :place
 	has_many :tickets
	validates :place, uniqueness: { scope: :start_date }
	validate :start_date_cannot_be_in_the_past
	def start_date_cannot_be_in_the_past
		if start_date.present? && start_date < Date.today
			errors.add(:start_date)
		end
	end
end
