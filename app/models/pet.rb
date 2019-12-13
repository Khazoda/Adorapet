class Pet < ApplicationRecord
    # many pets to one user
    # one avatar to one pet
    belongs_to :user
    has_one_attached :avatar
end
