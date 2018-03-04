# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserProfilesController, type: :controller do
  let(:user_profile) { create(:user_profile, user_id: user.id, job_id: job.id) }
  let(:user) { create(:user) }
  let(:facebook) { "facebook" }
  let(:job) { create(:job) }

  describe "#index" do
    context "when user not sign_in" do
      before { get :index }

      it { expect(response).to redirect_to root_path }
    end

    context "when user sign_in" do
      before do
        sign_in_as(facebook, user)
        get :index
      end

      it { expect(response).to have_http_status(:success) }
      it { expect(response).to render_template :index }
    end
  end

  describe "#show" do
  end

  describe "#new" do
  end

  describe "#edit" do
  end
end
