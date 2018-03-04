# frozen_string_literal: true

FactoryGirl.define do
  factory :user do
    provider "facebook"
    sequence(:uid) { |n| n }
    nickname "Jaru"
    image_url "http://test.png"
  end
end
