Entao(/^eu clico na atividade Analisar Minuta de PRD ou PRCA$/) do
  page.find(:xpath, "//input[@type='text'][@name='search']").set($protocolo).native.send_keys [:enter]
  page.find(:xpath, "//a[text()='Analisar Minuta de PRD ou PRCA']").click
  sleep 2
end

Dado(/^que eu estou dentro da atividade Analisar Minuta de PRD ou PRCA$/) do
  resultado = find(:xpath, "//h2[text()='Analisar Minuta de PRD ou PRCA']").text
  expect(resultado).to eq  "Analisar Minuta de PRD ou PRCA"
end

Quando(/^preencho todos os dados da tela Analisar Minuta de PRD ou PRCA$/) do
  # entra no frame
  page.driver.browser.switch_to.frame 1
  # campo Documentos necessários para aprovação de CRD/CRCA:
  find('div[data-viewid$=Section1] textarea').set(Faker::Lorem.characters(10))
  sleep 2
end

Entao(/^clico em Encerrar Tarefa Analisar Minuta de PRD ou PRCA$/) do
  click_button "Encerrar Tarefa"
end
