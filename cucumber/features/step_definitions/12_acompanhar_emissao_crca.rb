Entao(/^eu clico na atividade Acompanhar Emissão do Documento CRCA$/) do
  page.find(:xpath, "//input[@type='text'][@name='search']").set($protocolo).native.send_keys [:enter]
  page.find(:xpath, "//a[text()='Acompanhar Emissão do Documento CRCA']").click
  sleep 1
end

Dado(/^que eu estou dentro da atividade Acompanhar Emissão do Documento CRCA$/) do
  resultado = find(:xpath, "//h2[text()='Acompanhar Emissão do Documento CRCA']").text
  expect(resultado).to eq  "Acompanhar Emissão do Documento CRCA"
  sleep 1
end

Quando(/^preencho todos os dados da tela Acompanhar Emissão do Documento CRCA$/) do
  # entra no frame
  page.driver.browser.switch_to.frame 1
  # campo de select - Numero da CRCA
  find('div[data-viewid$=Text9] input').set(Faker::Base.numerify("#######"))
  sleep 1
end

Entao(/^clico em Encerrar Tarefa Acompanhar Emissão do Documento CRCA$/) do
  click_button "Encerrar Tarefa"
end
