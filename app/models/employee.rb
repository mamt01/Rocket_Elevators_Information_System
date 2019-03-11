class Employee < ApplicationRecord
    validates(:email, presence: true)
    validates(:passphrase, presence: true)
end
