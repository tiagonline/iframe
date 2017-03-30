#require 'capybara/cucumber'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'faker'
require 'cpf_faker'
require 'rspec'
require 'site_prism'
require 'capybara'
require 'yaml'
require 'capybara/poltergeist'
require 'cnpj_utils'

include Capybara::DSL

# set de browser simples que funciona
# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, :browser => :chrome) # <-aqui seta o browser
# end
#
# Capybara.default_driver = :selenium
# Capybara.default_max_wait_time = 60
#
# Capybara.app_host = "http://cucumber.conformedata.dynu.net/conformedata"

# implementação nova
BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

## variable which loads the data file according to the environment
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT_TYPE}.yaml")

## register driver according with browser chosen
Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => [ "--start-maximized" ]
      }
    )
  )
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  elsif BROWSER.eql?('poltergeist')
    options = { js_errors: false, window_size: [1440,3000], screen_size: [1440,3000] }
    Capybara::Poltergeist::Driver.new(app, options)
  end
end
