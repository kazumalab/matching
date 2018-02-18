# frozen_string_literal: true

FactoryGirl.define do
  factory :user do
    sequence(:id) { |n| }
    provider "facebook"
    uid 1
    nickname "Jaru"
    image_url "ImageUrl"
  end
end
