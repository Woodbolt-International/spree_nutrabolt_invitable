ApplicationController.class_eval do
  before_action :authenticate_spree_user!

  protected

  def authenticate_inviter!
    redirect_to spree.root_path unless spree_current_user.try(:admin?)
  end
end
