# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let(:user) { build(:user) }
  let(:facebook) { "facebook" }
  before do
    sign_in_as(facebook, user)
  end

  describe "#create" do
    it { expect(response).to have_http_status(:success) }
  end

  describe "#destroy" do
    before { get :destroy, params: { session: { user_id: user.id } } }

    it { expect(response).to have_http_status 302 }
    it { expect(response).to redirect_to root_path }
  end
end
