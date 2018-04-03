class Ticket < ApplicationRecord
	belongs_to :event
	has_many :user_tickets
	has_many :users, through: :user_tickets
	validates :price, numericality: { only_integer: true }
	validates :price, numericality: { greater_than: 0 }
	
end
