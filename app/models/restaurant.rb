class Restaurant < ApplicationRecord

  # Asociaciones
	belongs_to :user #current_user.restaurant
	has_many :schedules #.schedules.each do ||
	has_many :foods

	#Active Record
	has_one_attached :photo

	# Geocoder
	geocoded_by :address
after_validation :geocode, if: :will_save_change_to_address?

	# Validaciones
	validates :name, :address, presence: true

end
