require 'rails_helper'

RSpec.describe DiariesController, type: :controller do
  def login(user_id)
    session[:user_id] = user_id
  end

  describe 'GET #index' do
    let!(:user_1) { create(:user) }
    let!(:user_2) { create(:user) }

    it 'get #index' do
      login(user_1.id)
      get :index
      expect(response.status).to eq(200)
    end
  end
end
