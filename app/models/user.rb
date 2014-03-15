class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates :terms_condition, presence: {message: 'Please read and accept the official rules.'}

  #validates :terms_condition, presence: true
  #validates :terms_of_service, acceptance: true

  validate do |user|
    user.errors.add(:base, "Please read and accept the official rules.") if user.terms_condition.blank?
  end


end
