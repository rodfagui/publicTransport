# == Schema Information
#
# Table name: vehicles
#
#  id         :integer          not null, primary key
#  brand      :string
#  plate      :string
#  year       :integer
#  color      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vehicle < ApplicationRecord
	has_many :tracks
	has_many :clients, through: :tracks
end
