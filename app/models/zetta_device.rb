class ZettaDevice < ApplicationRecord
  self.abstract_class = true
  has_one :zetta_device_proxy, as: :zettable, dependent: :destroy, validate: true
  validates_associated :zetta_device_proxy
  before_create :create_zetta_device_proxy
end