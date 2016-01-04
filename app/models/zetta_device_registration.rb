class ZettaDeviceRegistration < ApplicationRecord
  belongs_to :zettable, polymorphic: true, dependent: :destroy, touch: true, validate: true
end
