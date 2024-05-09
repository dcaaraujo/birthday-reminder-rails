class User < ApplicationRecord
  has_secure_password

  # validation
  validates :first_name, :last_name, :email, :birthdate, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  # methods

  def fullname
    "#{first_name} #{last_name}"
  end
end
