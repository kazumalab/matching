# frozen_string_literal: true

FactoryGirl.define do
  factory :user_profile do
    sex_type "male"
    height 170
    body_type "standard"
    blood_type "unknown"
    education_background "university_degree"
    annual_income "seven_to_eight"
    holiday "weekends"
    drink_alcohol "frequently"
    smoking "absolutely"
    marriage_history "single"
    marriage_intention "within_two_to_three"
    first_date_cost "a_little_more_by_men"
    after_first_date_cost "dutch_treat"
  end
end
