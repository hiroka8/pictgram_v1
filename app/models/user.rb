class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,format:{with: /[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]/}
  validates :password, presence: true, length: { in: 8..32 }

  has_secure_password
end
