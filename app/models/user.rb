class User < ActiveRecord::Base
<<<<<<< HEAD
	validates :name, presence: true, length: { maximum: 50}
	validates :email, presence: true, length: {maximum: 255}, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}, uniqueness: { case_sensitive: false }
=======
  before_save { self.email = email.downcase! }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}

	#validates(:name, presence: true)
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}


>>>>>>> 9ca549c181a1c8e2ffbbbd2be57244f2dfb53323
end
