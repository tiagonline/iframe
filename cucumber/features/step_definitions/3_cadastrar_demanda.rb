#require_relative '2_iniciar_processo.rb'

Dado(/^que eu acesse a página Meu Trabalho$/) do
  visit "/dashboards/TWP/BPM_WORK?tw.local.view=tasks&tw.local.state=open"
end

Quando(/^eu informar o protocolo na pesquisa$/) do
  page.find(:xpath, "//input[@type='text'][@name='search']").set($protocolo).native.send_keys [:enter]
  sleep 1
end

Entao(/^eu clico nela$/) do
  page.find(:xpath, "//a[text()='Cadastrar Demanda - CRD/CRCA Diversas']").click
end

Dado(/^que eu estou dentro da atividade Cadastrar Demanda \- CRD\/CRCA Diversas$/) do
  resultado = find(:xpath, "//h2[text()='Cadastrar Demanda - CRD/CRCA Diversas']").text
  expect(resultado).to eq  "Cadastrar Demanda - CRD/CRCA Diversas"
end

Quando(/^preencho todos os dados da tela$/) do

  page.driver.browser.switch_to.frame 1
  find('div[data-binding$=objetoDemanda] textarea').set(Faker::Lorem.word)
  find('div[data-binding$=observacoesGerais] textarea').set(Faker::Lorem.word)
  find('div[data-binding$=detalhesAssunto] textarea').set(Faker::Lorem.word)
  find('div[data-binding$=assunto] input').set(Faker::Lorem.word)
  find('div[data-binding$=valorTotal] input').set(Faker::Base.numerify("#####"))

  #find('div[data-bindingtype$=Empresa[]] input').set("500 - Companhia Energética de Minas Gerais")
  sleep 3
end

Entao(/^clico em Confirmar Cadastro$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
