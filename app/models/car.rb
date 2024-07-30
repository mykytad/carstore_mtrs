class Car < ApplicationRecord
  belongs_to :user
  belongs_to :status

  mount_uploaders :photos, PhotoUploader
  # has_one_attached :photos
  # serialize :photos # , JSON

  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["body_type", "color", "created_at", "engine_volume", "fuel", "id", "make", "mileage", "model", "photos", "price", "status_id", "transmission", "updated_at", "user_id", "year"]
  end
end
