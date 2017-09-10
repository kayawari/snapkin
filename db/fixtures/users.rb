# 初期設定ユーザー
User.seed do |u|
  u.email = 'test@sample.com'
  u.password = '1qaz2wsx'
  u.first_name = 'テスト'
  u.last_name = '太郎'
  u.nick_name = 'テス太'
  u.default_lng = '139.738115'
  u.default_lat = '35.628401'
end