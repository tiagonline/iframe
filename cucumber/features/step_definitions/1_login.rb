Dado(/^que eu acesse a página de Login$/) do
  visit "/login.jsp"
end

Quando(/^eu informar os campos obrigatórios$/) do
  @Login.login.set(@login)
  @Login.senha.set(@senha)
end

Quando(/^Clicar em Logar$/) do
  page.find(:xpath, "//input[@type='submit'][@name='save']").click
end

Entao(/^o meu Login e efetuado com sucesso$/) do
  #expect(page).to have_selector :css, '.bpm-task-list-header-title'
  expect(page).to have_xpath("//h2[text()='Meu Trabalho']")
  sleep 3
end
