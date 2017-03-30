# Projeto PCMS

```ruby
Comandos básicos para iniciar um projeto em Cucumber.

cucumber -- init = Inicia um projeto novo.

Ajustar a estrutura do projeto da seguinte maneira:

  nome_projeto
    cucumber
      features
        attach
        hooks
        page_objects
        specifications
        step_definitions
        support
          config
          knowledgebase

```
No nosso arquivo de Enviroment (env.rb) vamos definir da seguinte maneira:

require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'faker'
require 'cpf_faker'
require 'site_prism'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60

Capybara.app_host = ""


    ## Configurando o ambiente ##

    ### Instalando o bundler ###
    Navegar para pasta desejada e executar o seguinte comando:
    ```shell
    gem install bundler
    ```

    ### Instalando as gems ###
    Execute o seguinte comando dentro da raiz do projeto:
    ```shell
    bundle install
    ```

    #### Windows ####

    Instale o pacote FFI
    * `gem install ffi --platform ruby` (pode demorar um pouco)

    ### Drivers necessários: ###

    * Instalar e colocar no PATH:
        * [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/)
        * [phantomjs](http://phantomjs.org/)
        * [InternetExplorerDriver](http://www.seleniumhq.org/download/) Escolha a versão correspondente 32 ou 64bit
    * Instalar a extensão do [Safari para webdriver](http://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz).

    #### Preparando o Internet Explorer ####

    1. Verifique o zoom configurado. Deve estar em 100%:
        * ![Passo 1](readme_img/step_1.png?raw=true "Verificar zoom")
    2. Desabilite o 'Modo Protegido' para todas as zonas em Opções de Internet > Segurança:
        * ![Passo 2](readme_img/step_2.png?raw=true "Desabilitar 'Modo Protegido'")
