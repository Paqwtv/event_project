require "rails_helper"

RSpec.describe ProfilesController, :type => :controller do
  
  context "In profile show" do
    let(:user) { create(:user) }

    # create(:user) do |user|
    #   user.create(attributes_for(:user))
    # end
    # создать двух юзеров
    it "shold get error when not login" do
      # запросить профайл какого-то юр=зера
      get :show, params: {:id => user.profile.id}
      # проверить соответствие ошибочного кода с кодом ответа
      expect(response).to have_http_status(404)
    end

    it "shold get error when access other user profile" do
# залогинить пользователя 1
      user1 = user
      user2 = user

      sign_in(user1)
# сдетать запрос на профайл пользователя 2
      
      puts ">>>>>>>>>>>>>>>>>", profile_path(user2.profile.id)
      get :show, params: {id: user2.profile.id}
#         # проверить соответствие ошибочного кода с кодом ответа
      expect(response).to have_http_status(404)
    end

    it "shold succeed when get my profile" do
      user1 = user
      user2 = user
# залогинить пользователя 2
# сделать запрос на профайл 2
# получить ответ и сравинить его с положительным ответом
      sign_in(user1)
# сдетать запрос на профайл пользователя 2
      puts ">>>>>>>>>>>>>>>>>", profile_path(user1.profile.id)
      get :show, params: {id: user1.profile.id}
# проверить соответствие ошибочного кода с кодом ответа
      expect(response).to have_http_status(200)

    end
  end
end