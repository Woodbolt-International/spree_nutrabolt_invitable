require 'spec_helper'

describe 'user invitation' do
  context 'frontend' do
    describe 'when user visit the /signup page' do
      it 'redirects the user to the home page' do
        get '/signup'
        expect(response).to redirect_to('/')
      end
    end

    describe '/login page' do
      it 'do not have signup link' do
        get '/login'
        expect(response.body).to_not include('/signup')
      end
    end
  end

  context 'admin' do
    before do
      sign_in_as_a_valid_spree_user
    end

    describe 'when admin visit users page' do
      it 'sees invitation button' do
        get_via_redirect spree.admin_users_path
        expect(response.body).to include('admin_invite_user_link')
      end
    end

    describe 'when user visit the invitation page' do
      before do
        get spree.new_spree_user_invitation_path
      end

      it 'renders invitation form' do
        expect(response).to render_template('spree/invitations/new')
      end

      it 'renders admin layout' do
        expect(response).to render_template(layout: 'spree/layouts/admin')
      end
    end
  end
end
