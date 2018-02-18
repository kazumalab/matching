# frozen_string_literal: true

FactoryGirl.define do
  factory :user do
    sequence(:id) { |n| }
    provider "facebook"
    sequence(:uid) { |n| }
    nickname "Jaru"
    image_url "ImageUrl"
  end
end
