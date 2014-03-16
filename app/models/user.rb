class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates :terms_condition, presence: {message: 'Please read and accept the official rules.'}

  #validates :terms_condition, presence: true
  #validates :terms_of_service, acceptance: true
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, format: { with: /\A[0-9]{5}\z/, message: "Zipcode must have 5 numbers only" }

  validate do |user|
    user.errors.add(:base, "Please read and accept the official rules.") if user.terms_condition.blank?
  end


end
