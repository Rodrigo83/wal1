Dado(/^que estou no site cep\.correiocontrol\.com\.br\/(\d+)\.json$/) do |arg1|
  visit 'http://cep.correiocontrol.com.br/13040089.json'
    window = Capybara.current_session.driver.browser.manage.window
    window.maximize
    sleep(4)
end

Entao(/^devo ver "([^"]*)"$/) do |arg1|
  expect(page).to have_content("Jardim Nova Europa")
end

