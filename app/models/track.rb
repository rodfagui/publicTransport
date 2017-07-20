# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  name       :string
#  distance   :integer
#  time       :integer
#  client_id  :integer
#  vehicle_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ApplicationRecord
  belongs_to :client
  belongs_to :vehicle
end
