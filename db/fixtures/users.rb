# 前回seedした画像が残っているので削除
require 'fileutils'
Dir.chdir 'public/uploads/diary/'
FileUtils.rm(Dir.glob('*.*'))

User.seed do |u|
  # ユーザー情報
  u.email = 'test@sample.com'
  u.password = '1qaz2wsx'
  u.first_name = 'テスト'
  u.last_name = '太郎'
  u.nick_name = 'テス太'
  u.default_lng = '35.628401'
  u.default_lat = '139.738115'
  u.image = Rails.root.join("db/fixtures/images/profile_image.jpg").open
end

# %w[東京駅 東京タワー 池袋駅 葉山駅 富士山 京都駅]
# 緯度
lats = %w[35.681167 35.658581 35.729503 35.297389 35.360556 34.985849]
# 経度
lngs = %w[139.767052 139.745433 139.710900 139.578381 138.727778 135.758767]
# 日記
6.times do |i|
  Diary.seed do |d|
    d.user_id = User.first.id
    d.title = "サンプルタイトル#{i+1}"
    d.content = "あいうえおあいうえお\n\rあいうえおあいうえお\n\rあいうえおあいうえお\n\rあいうえおあいうえお\n\r"
    d.lat = lats[i]
    d.lng = lngs[i]
    d.journey_time = '2017-10-29 10:00:00'
    d.image = Rails.root.join("db/fixtures/images/img_0#{i+1}.jpg").open
  end
end
