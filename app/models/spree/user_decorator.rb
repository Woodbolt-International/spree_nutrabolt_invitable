Spree::User.class_eval do
  devise :database_authenticatable, :recoverable, :rememberable, :trackable,
         :validatable, :encryptable, :invitable
end
