#importando-require as importaçoes para que o [spe] consiga trabalhar com capybara 

require "capybara"
require "capybara/rspec"
require "selenium-webdriver"


RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  
  config.mock_with :rspec do |mocks|
    
    mocks.verify_partial_doubles = true
  end

  
  config.shared_context_metadata_behavior = :apply_to_host_groups

  #Inclusão das DSL do capybara,q são todos os metodos e recursos do capybara dentro do spec, fica reconhecido #dentro dos arquivos spec de testes os [rb]
  config.include Capybara::DSL    
  
  config.before(:example) do 
    page.current_window.resize_to(1280,800)
end

config.after(:example) do |e|

    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
    page.save_screenshot ('log/' + nome + '.png')
    
end
end

#configuracao do Drive, Capybara com C maiusculo também NESSE CASO
# || o que está dentro do !! sao argumentos

Capybara.configure do |config|
#config.default_driver = :selenium_chrome
config.default_driver = :selenium
#se quiser o chrome, basta descomentar 

#as linhas acima, faz com que o projeto seja executado pelo drive google chrome [selenium_chrome] e no Firefox
# config.default_driver = :selenium : configuracao para o firefox

end

#para executar tem q esta dentro dessa estrutura C:\qafullstack\ruby\capy  digitar [rspec -fd ] 