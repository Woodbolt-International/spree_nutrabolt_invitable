module ValidSpreeUserRequestHelper
  def sign_in_as_a_valid_spree_user
    @user ||= FactoryGirl.create :admin_user
    post_via_redirect spree.admin_spree_user_session_path, 'spree_user[email]' => @user.email, 'spree_user[password]' => @user.password
  end
end
