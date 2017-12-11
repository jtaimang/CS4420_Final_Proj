class Recipe < ApplicationRecord
    validates :description,
        length: {maximum: 255}
end
