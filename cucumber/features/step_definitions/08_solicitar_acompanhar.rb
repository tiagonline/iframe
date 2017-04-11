Entao(/^eu clico na atividade Solicitar e Acompanhar Inclusão da Matéria na Pauta de Reunião \- Diretoria$/) do
  page.find(:xpath, "//input[@type='text'][@name='search']").set($protocolo).native.send_keys [:enter]
  page.find(:xpath, "//a[text()='Solicitar e Acompanhar Inclusão da Matéria na Pauta de Reunião - Diretoria']").click
  sleep 1
end

Dado(/^que eu estou dentro da atividade Solicitar e Acompanhar Inclusão da Matéria na Pauta de Reunião \- Diretoria$/) do
  resultado = find(:xpath, "//h2[text()='Solicitar e Acompanhar Inclusão da Matéria na Pauta de Reunião - Diretoria']").text
  expect(resultado).to eq  "Solicitar e Acompanhar Inclusão da Matéria na Pauta de Reunião - Diretoria"
  sleep 1
end

Quando(/^preencho todos os dados da tela Solicitar e Acompanhar Inclusão da Matéria na Pauta de Reunião \- Diretoria$/) do
    # entra no frame
    page.driver.browser.switch_to.frame 1
    # campo de select - Histórico de Andamento:
    find('div[data-viewid$=Text_Area1] textarea').set(Faker::Lorem.characters(20))
    sleep 1
end

Entao(/^clico em Encerrar Tarefa Solicitar e Acompanhar Inclusão da Matéria na Pauta de Reunião \- Diretoria$/) do
  click_button "Encerrar Tarefa"
end
