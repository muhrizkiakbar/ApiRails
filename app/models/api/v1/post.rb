class Api::V1::Post < ApplicationRecord

    validates :title, :content, presence: true #required
end
