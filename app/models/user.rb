class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :confirmable, :lockable

  def self.from_omniauth(auth)
	  	where(provider: auth[:provider], uid: auth[:uid]).first_or_create do |user|
	    user.name = auth[:info][:name]
	    user.email = auth[:info][:email]
  	end
  end

end
