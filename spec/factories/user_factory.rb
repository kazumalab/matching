# frozen_string_literal: true

FactoryGirl.define do
  factory :user do
    provider "facebook"
    sequence(:uid) { |n| n }
    nickname "Jaru"
    image_url "http://graph.facebook.com/1234567/picture?type=square"
  end
end
