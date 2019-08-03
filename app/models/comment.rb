class Comment < ApplicationRecord
  resourcify
  include Authority::Abilities

  belongs_to :post
  belongs_to :user
end
