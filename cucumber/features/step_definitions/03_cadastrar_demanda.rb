##### Aqui está o Contexto de Pesquisa do Protocolo no dashboard #####
Dado(/^que eu acesse a página Meu Trabalho$/) do
  visit "/dashboards/TWP/BPM_WORK?tw.local.view=tasks&tw.local.state=open"
end

Quando(/^eu informar o protocolo na pesquisa$/) do
  page.find(:xpath, "//input[@type='text'][@name='search']").set($protocolo).native.send_keys [:enter]
  sleep 5
end
#######################################################################

Entao(/^eu clico na atividade Cadastrar Demanda$/) do
  page.find(:xpath, "//a[text()='Cadastrar Demanda - CRD/CRCA Diversas']").click
  sleep 1
end

Dado(/^que eu estou dentro da atividade Cadastrar Demanda \- CRD\/CRCA Diversas$/) do
  resultado = find(:xpath, "//h2[text()='Cadastrar Demanda - CRD/CRCA Diversas']").text
  expect(resultado).to eq  "Cadastrar Demanda - CRD/CRCA Diversas"
end

Quando(/^preencho todos os dados da tela Cadastrar Demanda \- CRD\/CRCA Diversas$/) do
  # entra no frame
    page.driver.browser.switch_to.frame 1
    # preenche campos de select
    # campo empresa:
      page.all('div[data-viewid$=Select3] input')[1].set("500 - Companhia Energética de Minas Gerais")
      sleep 1
      # campo negócio:
      page.all('div[data-viewid$=Select2] input')[1].set("Geração")
      sleep 1
      # campo Necessário obtenção de:
      page.all('div[data-viewid$=Select4] input')[1].set("CRCA").native.send_keys [:enter]
      sleep 1
      # campo Finalidade:
      page.all('div[data-viewid$=Select1] input')[1].set("Apostilamento").native.send_keys [:enter]
      sleep 1
      # preenche campos de preenchimento
      find('div[data-binding$=dataNecessidade] input').set("01/01/2017")
      find('div[data-binding$=crd] input').set(Faker::Base.numerify("#####"))
      find('div[data-binding$=objetoDemanda] textarea').set(Faker::Lorem.word)
      find('div[data-binding$=observacoesGerais] textarea').set("01010101")
      find('div[data-binding$=detalhesAssunto] textarea').set(Faker::Lorem.word)
      find('div[data-binding$=assunto] input').set(Faker::Lorem.word)
      find('div[data-binding$=valorTotal] input').set(Faker::Base.numerify("###########"))
      sleep 1
end

Entao(/^clico em Confirmar Cadastro da tela Cadastrar Demanda \- CRD\/CRCA Diversas$/) do
  click_button "Confirmar Cadastro"
  click_button "Confirmar"
end
