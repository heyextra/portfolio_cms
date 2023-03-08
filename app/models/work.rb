class Work < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true

    belongs_to :admin
end
