Entao(/^eu clico na atividade Acompanhar Emissão do Documento CRD$/) do
  page.find(:xpath, "//input[@type='text'][@name='search']").set($protocolo).native.send_keys [:enter]
  page.find(:xpath, "//a[text()='Acompanhar Emissão do Documento CRD']").click
  sleep 1
end

Dado(/^que eu estou dentro da atividade Acompanhar Emissão do Documento CRD$/) do
  resultado = find(:xpath, "//h2[text()='Acompanhar Emissão do Documento CRD']").text
  expect(resultado).to eq  "Acompanhar Emissão do Documento CRD"
  sleep 1
end

Quando(/^preencho todos os dados da tela Acompanhar Emissão do Documento CRD$/) do
    # entra no frame
    page.driver.browser.switch_to.frame 1
    # campo de select - Histórico de Andamento:
    find('div[data-viewid$=Text10] input').set(Faker::Base.numerify("#######"))
    sleep 1
end

Entao(/^clico em Encerrar Tarefa Acompanhar Emissão do Documento CRD$/) do
  click_button "Encerrar Tarefa"
end
