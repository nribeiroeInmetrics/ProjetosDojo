Dado("esteja na home no site") do
  visit'http://demoqa.com/'
end

Quando("clicar no link Registration") do
  find(:xpath, '//*[@id="menu-item-374"]/a').click
end

Então("será direcionado para a página de cadastro") do
 fill_in('first_name',:with => 'Natália')
 fill_in('last_name',:with => 'Carvalho')
 find(:xpath, '//*[@id="pie_register"]/li[2]/div/div/input[1]').click
 find(:xpath, '//*[@id="pie_register"]/li[3]/div/div/input[1]').click
 find(:xpath, '//*[@id="dropdown_7"]/option[26]').click
 find(:xpath, '//*[@id="mm_date_8"]/option[3]').click
 find(:xpath, '//*[@id="mm_date_8"]/option[3]').click
 find(:xpath, '//*[@id="dd_date_8"]/option[17]	').click
 find(:xpath, '//*[@id="yy_date_8"]/option[19]	').click
 fill_in('phone_9',:with => '551199999999')
 fill_in('username',:with => 'Natalia Ribeiro')
 fill_in('e_mail',:with => 'natalia.ribeiro@inmetrics.com.br')
 attach_file('profile_pic_10', File.absolute_path('C:\Users\Inmetrics.LP1439'))
 fill_in('description',:with => 'Meu nome é Natália, tenho 20 anos e trabalho na Inmetrics')
 fill_in('password',:with => '123456')
 fill_in('confirm_password_password_2',:with => '123456')
 click_button('Submit')
end