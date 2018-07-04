class User < ApplicationRecord
  validates :email,
            presence: true,
            format: {
                with: /\A[^@\s]+@[^@\s]+\z/,
                message: 'does not appear to be a valid email address',
            }

  validates :password,
            presence: true


  def authenticate(password)
    password == self.password
  end

end
