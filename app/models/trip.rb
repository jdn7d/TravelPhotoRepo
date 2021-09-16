class Trip < ApplicationRecord
    has_many :photos, dependent: :destroy
    scope :with_attached_photos, -> { includes(:photos).merge(Photo.with_attached_file) }
        #Using a join model to annotate Active Storage blobs with custom data
    
end
