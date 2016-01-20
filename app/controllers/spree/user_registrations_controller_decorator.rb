Spree::UserRegistrationsController.class_eval do
  before_action :redirect_to_root_path

  private

  def redirect_to_root_path
    redirect_to spree.root_path
  end
end
