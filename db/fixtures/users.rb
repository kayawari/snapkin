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
end

# 日記
6.times do |i|
  i = i + 1
  Diary.seed do |d|
    d.user_id = User.first.id
    d.title = "サンプルタイトル#{i}"
    d.content = "あいうえおあいうえお\n\rあいうえおあいうえお\n\rあいうえおあいうえお\n\rあいうえおあいうえお\n\r"
    d.lat = 139.7670516
    d.lng = 35.6811673
    d.journey_time = '2017-10-29 10:00:00'
    d.image = Rails.root.join("db/fixtures/images/img_0#{i}.jpg").open
  end
end
