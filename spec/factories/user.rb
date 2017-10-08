FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "sample+#{n}@abc.com" }
    password 'hogehoge'
    password_confirmation 'hogehoge'
    first_name 'サンプル'
    last_name '太郎'
    nick_name 'サンプルくん'
    default_lat 0
    default_lng 0
    diaries {[
      FactoryGirl.create(:diary)
    ]}
  end
end