class Photocell < ApplicationRecord
  has_one :zetta_device, as: :zettable, dependent: :destroy, validate: :true
end