Entao(/^eu clico na atividade Consolidar e Coletar Assinaturas na PRD ou PRCA$/) do
  page.find(:xpath, "//input[@type='text'][@name='search']").set($protocolo).native.send_keys [:enter]
  page.find(:xpath, "//a[text()='Consolidar e Coletar Assinaturas na PRD ou PRCA']").click
  sleep 1
end

Dado(/^que eu estou dentro da atividade Consolidar e Coletar Assinaturas na PRD ou PRCA$/) do
  resultado = find(:xpath, "//h2[text()='Consolidar e Coletar Assinaturas na PRD ou PRCA']").text
  expect(resultado).to eq  "Consolidar e Coletar Assinaturas na PRD ou PRCA"
  sleep 1
end

Quando(/^preencho todos os dados da tela Consolidar e Coletar Assinaturas na PRD ou PRCA$/) do
    # entra no frame
    page.driver.browser.switch_to.frame 1
    # campo de select - Resultado da Assinatura na PRD/PRCA:
    page.all('div[data-viewid$=Select1] input')[1].set("assinado")
    sleep 1
end

Entao(/^clico em Encerrar Tarefa Consolidar e Coletar Assinaturas na PRD ou PRCA$/) do
  click_button "Encerrar Tarefa"
end
