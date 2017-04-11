Entao(/^eu clico na atividade Providenciar Análise e Aprovação da PRD ou PRCA pela Secretária Geral$/) do
  page.find(:xpath, "//input[@type='text'][@name='search']").set($protocolo).native.send_keys [:enter]
  page.find(:xpath, "//a[text()='Providenciar Análise e Aprovação da PRD ou PRCA pela Secretária Geral']").click
  sleep 2
end

Dado(/^que eu estou dentro da atividade Providenciar Análise e Aprovação da PRD ou PRCA pela Secretária Geral$/) do
  resultado = find(:xpath, "//h2[text()='Providenciar Análise e Aprovação da PRD ou PRCA pela Secretária Geral']").text
  expect(resultado).to eq  "Providenciar Análise e Aprovação da PRD ou PRCA pela Secretária Geral"
  sleep 1
end

Quando(/^preencho todos os dados da tela Providenciar Análise e Aprovação da PRD ou PRCA pela Secretária Geral$/) do
    # entra no frame
    page.driver.browser.switch_to.frame 1
    # campo Documentos necessários para aprovação de CRD/CRCA:
    find('div[data-viewid$=Section1] textarea').set(Faker::Lorem.characters(20))
    sleep 2
end

Entao(/^clico em Encerrar Tarefa Providenciar Análise e Aprovação da PRD ou PRCA pela Secretária Geral$/) do
  click_button "Encerrar Tarefa"
end
