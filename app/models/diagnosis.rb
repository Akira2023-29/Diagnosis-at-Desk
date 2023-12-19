class Diagnosis < ApplicationRecord
    mount_uploader :desk_image, DeskImageUploader 

    belongs_to :user

    has_many :diagnosis_tags
    has_many :tags, through: :diagnosis_tags

    has_maby :favorites, depentent: :destroy

    # validates :desk_image, presence: true, length: { maximum: 200 }
    # validates :color_info, presence: true, length: { maximum: 200 }
end
