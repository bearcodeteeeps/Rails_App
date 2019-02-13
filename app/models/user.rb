class User < ApplicationRecord
  
  has_many :posts
  has_many :authentications

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:registerable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
 
  attr_accessor :login

  def self.find_for_database_authentication warden_conditions
    debugger
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", {value: login.strip.downcase}]).first
  end
  # def self.from_omniauth(auth)
  
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.email = auth.info.email
  #     user.provider = auth.provider
  #     user.uid = auth.uid
  #     user.password = Devise.friendly_token[0,20]
  #     end
  # end
  def self.from_omniauth(access_token)
    data = access_token.info
    puts data
    puts data[:email]
    password = Devise.friendly_token[0,20]
    user = User.where(email: data["email"]).first_or_initialize(password: password)
    user.save
    user

  end

  

end


    # user = User.where(:email => data["email"]).first
    # unless user
    #   password = Devise.friendly_token[0,20]
    #   user = User.create(name: data["name"], email: data["email"],
    #     password: password, password_confirmation: password
    #     )
    # end
    # user
 

