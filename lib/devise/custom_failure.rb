module Devise
  class CustomFailure < FailureApp
    def redirect_url
      spree.login_url
    end

    def respond
      if http_auth?
        http_auth
      else
        flash[:notice] = I18n.t(:unauthenticated, scope: [ :devise, :failure ])
        redirect
      end
    end
  end
end
