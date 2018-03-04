class UserProfile < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  belongs_to :job, foreign_key: "job_id"
  has_one :hometown
  has_one :residence

  enum sex_type: { male: 1, female: 2 }
  enum body_type: { slim: 1, slightly_slim: 2, standard: 3, glamor: 4, muscular: 5, slightly_obesity: 6, obesity: 7 }
  enum blood_type: { type_a: 1, type_b: 2, type_o: 3, type_ab: 4, unknown: 5 }
  enum education_background: { high_school: 1, junior_or_vocational: 2, university_degree: 3, master_degree: 4, other: 5 }
  enum annual_income: {
    less_than_one: 1,
    one_to_three: 2,
    three_to_four: 3,
    four_to_five: 4,
    five_to_six: 5,
    six_to_seven: 6,
    seven_to_eight: 7,
    eight_to_nine: 8,
    nine_to_ten: 9,
    ten_to_twelve_half: 10,
    twelve_half_to_fifteen: 11,
    fifteen_to_twenty: 12,
    twenty_to_twenty_five: 13,
    twenty_five_to_thirty: 14,
    more_than_thirty: 15,
    undisplay: 16
  }
  enum holiday: { weekends: 1, weekdays: 2, irregular: 3 }
  enum drink_alcohol: { a_litte: 1, frequently: 2, fit_to_partner: 3, absolutely: 4 }
  enum smoking: { absolutely: 1, absolutely_non_smoker: 2, electronic_cigarette: 3, cigarette: 4, stop_for_partner: 5 }
  enum marriage_history: { single: 1, divorce: 2, bereavement: 3 }
  enum marriage_intention: {
    within_this_year: 1,
    within_one_to_two: 2,
    within_two_to_three: 3,
    if_find_good_person: 4,
    no_intention_now: 5
  }
  enum first_date_cost: { all_by_men: 1, a_little_more_by_men: 2, dutch_treat: 3, my_payment: 4 }, _prefix: "first"
  enum after_date_cost: { all_by_men: 1, a_little_more_by_men: 2, dutch_treat: 3, my_payment: 4 }, _prefix: "after"
end
