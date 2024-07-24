class Car < ApplicationRecord
  belongs_to :user

  mount_uploaders :photos, PhotoUploader
  # has_one_attached :photos
  # serialize :photos # , JSON
end
