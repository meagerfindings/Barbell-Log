class User < ApplicationRecord
  has_many :sessions
  has_secure_password
end
