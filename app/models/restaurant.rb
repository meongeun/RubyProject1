class Restaurant < ApplicationRecord
    resourcify
    include Authority::Abilities

    belongs_to :user
    has_many :posts
    mount_uploader :images, PostUploader
    serialize :images, JSON
end
