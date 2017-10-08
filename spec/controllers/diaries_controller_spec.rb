require 'rails_helper'

RSpec.describe DiariesController, type: :controller do
  describe 'GET #index' do
    let!(:user_1) { create(:user) }
    let!(:user_2) { create(:user) }

    it 'get #index' do
      session[:user_id] = user_1.id
      get :index
      expect(response.status).to eq(200)
    end
  end
end
