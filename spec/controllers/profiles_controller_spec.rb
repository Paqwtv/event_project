# require "devise"

RSpec.describe ProfilesController do                 
    context "In profile show" do  
    # создать двух юзеров                                                                          
      it "shold get error when not login" do                                                                        
        # запросить профайл какого-то юр=зера
        # проверить соответствие ошибочного кода с кодом ответа
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