class Spree::InvitationsController < Devise::InvitationsController
  helper 'spree/base', 'spree/store'

  if Spree::Auth::Engine.dash_available?
    helper 'spree/analytics'
  end

  include Spree::Core::ControllerHelpers::Store
  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Common
  include Spree::Core::ControllerHelpers::Order

  def new
    self.resource = Spree::User.new
    render layout: 'spree/layouts/admin'
  end

  def create
    self.resource = invite_resource

    if resource.errors.empty?
      yield resource if block_given?
      if self.resource.invitation_sent_at
        set_flash_message :notice, :send_instructions, email: self.resource.email
      end
      redirect_to admin_users_path
    else
      render :new, layout: 'spree/layouts/admin'
    end
  end

end
