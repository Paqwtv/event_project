require "rails_helper"

RSpec.describe ProfilesController, :type => :controller do
  context "In profile show" do
    # create(:user) do |user|
    #   user.create(attributes_for(:user))
    # end
    user2 = FactoryGirl.create(:user)
    # создать двух юзеров
      it "shold get error when not login" do
        # запросить профайл какого-то юр=зера
        get "show"
        # проверить соответствие ошибочного кода с кодом ответа
        expect(response).to have_http_status(404)
      end

      it "shold get error when access other user profile" do
# залогинить пользователя 1
# сдетать запрос на профайл пользователя 2
#         # проверить соответствие ошибочного кода с кодом ответа
      end

      it "shold succeed when get my profile" do
# залогинить пользователя 2
# сделать запрос на профайл 2
# получить ответ и сравинить его с положительным ответом


      end
    end
  end