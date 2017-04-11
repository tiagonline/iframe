Entao(/^eu clico na atividade Elaborar ou Revisar Minuta de PRD ou PRCA$/) do
  page.find(:xpath, "//input[@type='text'][@name='search']").set($protocolo).native.send_keys [:enter]
  page.find(:xpath, "//a[text()='Elaborar ou Revisar Minuta de PRD ou PRCA']").click
  sleep 2
end

Dado(/^que eu estou dentro da atividade Elaborar ou Revisar Minuta de PRD ou PRCA$/) do
  resultado = find(:xpath, "//h2[text()='Elaborar ou Revisar Minuta de PRD ou PRCA']").text
  expect(resultado).to eq  "Elaborar ou Revisar Minuta de PRD ou PRCA"
end

Quando(/^preencho todos os dados da tela Elaborar ou Revisar Minuta de PRD ou PRCA$/) do
  # entra no frame
  page.driver.browser.switch_to.frame 1
  #within_frame 0 do
  # preenche campo de select
  # campo Análise PP/AP:
  page.all('div[data-viewid$=Select1] input')[1].set("Necessita análise da PP/AP")#.native.send_keys [:tab, :tab, :enter]
  sleep 3
end

Entao(/^clico em Encerrar Tarefa da tela Elaborar ou Revisar Minuta de PRD ou PRCA$/) do
  #page.all('div[data-viewid$=Button2] button').click_button
  click_button "Encerrar Tarefa"
  #sleep 10
end
