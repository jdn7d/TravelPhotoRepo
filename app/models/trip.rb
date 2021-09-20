class Trip < ApplicationRecord
    
    scope :with_attached_photos, -> { includes(:photos).merge(Photo.with_attached_file) }
        #Using a join model to annotate Active Storage blobs with custom data
    
    validates_presence_of :user, :location, :date
    belongs_to :user
    has_many :photos, dependent: :destroy
    has_one_attached :cover_photo
end
