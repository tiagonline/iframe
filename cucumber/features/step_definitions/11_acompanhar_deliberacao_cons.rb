Entao(/^eu clico na atividade Acompanhar Deliberação da Matéria \- Conselho de Admin\.$/) do
  page.find(:xpath, "//input[@type='text'][@name='search']").set($protocolo).native.send_keys [:enter]
  page.find(:xpath, "//a[text()='Acompanhar Deliberação da Matéria - Conselho de Admin.']").click
  sleep 1
end

Dado(/^que eu estou dentro da atividade Acompanhar Deliberação da Matéria \- Conselho de Admin\.$/) do
  resultado = find(:xpath, "//h2[text()='Acompanhar Deliberação da Matéria - Conselho de Admin.']").text
  expect(resultado).to eq  "Acompanhar Deliberação da Matéria - Conselho de Admin."
  sleep 1
end

Quando(/^preencho todos os dados da tela Acompanhar Deliberação da Matéria \- Conselho de Admin\.$/) do
    # entra no frame
    page.driver.browser.switch_to.frame 1
    # campo Histórico de Andamento:
    find('div[data-viewid$=Text_Area1] textarea').set(Faker::Lorem.characters(20))
    # campo Deliberação do Conselho:
    page.all('div[data-viewid$=Select1] input')[1].set("Aprovada")
    sleep 1
end

Entao(/^clico em Encerrar Tarefa Acompanhar Deliberação da Matéria \- Conselho de Admin\.$/) do
  click_button "Encerrar Tarefa"
end
