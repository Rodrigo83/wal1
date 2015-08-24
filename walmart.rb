Dado(/^que estou no site Walmart\.com$/) do
    visit 'http://www.walmart.com.br/'
    window = Capybara.current_session.driver.browser.manage.window
    window.maximize
end

Dado(/^preencho o campo pesquisa "([^"]*)"$/) do |arg1|
  fill_in "suggestion-search", :with => "tv" 
  sleep(2)  
end

Dado(/^clico em procurar$/) do
  find(:xpath, "id('site-topbar')/div[2]/form/div/div/section/div/ul/li[1]").click  
end

Dado(/^clico em tv led sansung$/) do
  find(:xpath, "id('category-products')/div[1]/section/ul/li[4]/figure/a/img").click   
end

Dado(/^clico em adicionar ao carrinho$/) do
  find(:xpath, "id('buybox-Walmart')/div[2]/div/div[4]/button").click
  sleep(6)
end

Dado(/^clico em continuar$/) do
 find(:xpath, "id ('navegaCarrinho')").click
 sleep(5)
end

Dado(/^clico em comprar$/) do
  find(:xpath, "id('wm-cart')/div/section/div[1]/div/a/span[1]").click
end

Então(/^devo ver o produto no carrinho como: "([^"]*)"$/) do |a|
  expect(page).to have_content(a)  
end
