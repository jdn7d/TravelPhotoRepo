class Trip < ApplicationRecord
    
    scope :with_attached_photos, -> { includes(:photos).merge(Photo.with_attached_file) }
        #Using a join model to annotate Active Storage blobs with custom data
    
        belongs_to :user
        has_many :photos, dependent: :destroy
end
