# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let(:user) { create(:user) }
  let(:facebook) { "facebook" }

  describe "#create" do
    before do
      sign_in_as(facebook, user)
    end

    it { expect(response).to have_http_status(:success) }
  end

  describe "#destroy" do
    before do
      sign_in_as(facebook, user)
      get :destroy, params: { session: { user_id: user.id } }
    end

    it { expect(response).to have_http_status 302 }
    it { expect(response).to redirect_to root_path }
  end
end
