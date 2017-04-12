Dado(/^que eu estou no painel Meu Trabalho$/) do
  visit "/dashboards/TWP/BPM_WORK?tw.local.view=tasks&tw.local.state=open"
end

Quando(/^eu clicar no link Iniciar Processo de Contratação de Materiais e Serviços$/) do
  page.find(:xpath, "//a[text()='Iniciar Processo de Contratação de Materiais e Serviços']").click
  sleep 1
end

Entao(/^clico em Iniciar Processo$/) do
  resultado = find(:xpath, "//h2[text()='Iniciar Processo de Contratação de Materiais e Serviços']").text
  expect(resultado).to eq  "Iniciar Processo de Contratação de Materiais e Serviços"

  # aqui entra no frame que está o elemento do botão Iniciar Processo
  page.driver.browser.switch_to.frame 1
    click_button 'Iniciar Processo'
    sleep 1
  # entra no iframe e busca o número do protocolo
  within_frame('_bpmEditor_0_iframe') do
    $protocolo = find('div').find('font').text
    puts "Protocolo: " + $protocolo
  end
  # debug para correr entre as divs do frame e achar o ultimo botão para clicar, gambiarra
  page.driver.browser.switch_to.frame 1
    page.all('div').each do |i|
      #puts i.text
    end
  click_button

  #find('div[data-viewid$=Button2] button').click
  # Essa linha faz sair do frame acima
  #page.driver.browser.switch_to.default_content

end
