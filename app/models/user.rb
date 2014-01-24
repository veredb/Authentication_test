class User < ActiveRecord::Base
   has_secure_password 
   validates_presence_of :password, :on => :create
   validates :password_confirmation, presence: true
   validates_presence_of :email, :on => :create
end
