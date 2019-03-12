class Lead < ApplicationRecord
    belongs_to :customer, optional: true
end
