FactoryGirl.define do
	factory :profile do
		sequence(:user_name) {|n| "Profile#{n}"}
    sequence(:gender) {|n| "gender#{n}@"}
  end
end