class ZettaDevice < ApplicationRecord
  self.abstract_class = true
  has_one :zetta_device_registration, as: :zettable, dependent: :destroy, validate: true
  validates_associated :zetta_device_registration
  before_create :create_zetta_device_registration
end