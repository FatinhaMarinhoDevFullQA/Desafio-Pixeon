**Respostas do Desafio PIXON - Automação de Testes**

A estruturação e escrita dos cenários de testes;
O desafio está dividido nas seguintes partes:

1. Especificar cenários de testes utilizando linguagem Gherkin da demo\aplicação em [Demo](https://demos.creative-tim.com/notus-react/?_ga=2.154140984.1600938269.1610986568-1695319199.1610986568#/admin/settings);

**A resposta do desafio [1] encontra-se nesse Arquivo 'Pixeon.feature'
**
<br>
2. Automatizar o teste front-end;

**2A.** Site [Frontend 1](https://the-internet.herokuapp.com/dynamic_loading/1) esperamos que voê crie uma automação que clique no botão `start`, aguarde pelo carreganeto faça uma validação que o texto “Hello World!” foi apresentado.


**2A. resposta do desafio [2A] encontra-se nesse Arquivo .rb ' formspixeon_spec.rb'


**2B.** Além do teste acima, ao acesso o site [Frontend 1](https://the-internet.herokuapp.com/login) seu desafio é criar uma automação que valide um login (com sucesso e com erro)

**2B. resposta do desafio [2B] encontra-se nesse Arquivo .rb ' loginPixeon_spec.rb'
**
Como Executar:**
<br>
1) Acessar o C: da sua máquina e criar  a seguinte estrutura de Pastas C:\qafullstack\ruby\capy
2) Acessar  a pasta 'capy' criada na estrutura exemplo acima e criar dentro da mesma uma pasta chamada 'spec' (minusculo) e salvar para dentro dessa pasta todos os arquivos .rb contidos no projeto 'Desafio-Pixeon'  chamada 'Capy' (sem as aspas)  em C: **OU** ou em algum diretório a sua escolha 
3) Através do VSCODE acessar a pasta 'Capy': Clicar em 'Arquivo>Abrir Pasta'>clicar  da pasta 'capy' > e clicar em 'selecionar Pasta' 
4) **Se você seguiu os exemplos de criação de diretório acima** e estando na 'raiz' do terminal CMD da sua escolha, realize as seguintes ações para executar sua automação;
   4.1 Acessar a pasta 'capy' do projeto através do seguinte comando 'cd C:\qafullstack\ruby\capy'
   4.2 Vamos executar  seguintes arquivos.rb [loginPixeon_spec.rb]  e [formspixeon_spec.rb ] chamando 'próprio nome do arquivo' que deverá ser da seguinte forma;
   
  C:\qafullstack\ruby\capy  #Estou dentro da pasta  Capy onde estão os arquivos .rb
  rspec spec\loginPixeon_spec.rb  #Comando para executar a automação chamando o 'próprio Nome do arquivo' 
  
  **E** <br>
  
  C:\qafullstack\ruby\capy  #Estou dentro da pasta  Capy onde estão os arquivos .rb
  rspec spec\formspixeon_spec.rb  #Comando para executar a automação chamando o 'próprio Nome do arquivo' 
  
<br> 
5) Após executar a automação dos .rbs [loginPixeon_spec.rb]  e [formspixeon_spec.rb ] deve ser criado **na estrura do seu projeto** no 'VSCODE' uma pasta chamada 'Log' responsável pela captura das 'Evidencias' da execução das automações : [loginPixeon_spec.rb]  e [formspixeon_spec.rb ]

**Pontos de atenção:** <br>
- O metódo configurado para captura das evidências encontra-se no arquivo **'spec_helper.rb'** , especificamente nesse bloco:

config.after(:example) do |e| <br>
nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_') <br>
page.save_screenshot ('log/' + nome + '.png')

- A automação está configurada para rodar no browser **'padrão do Selenium'** que é o 'Firefox', caso queira rodar no 'Chrome', acessa o arquivo 'spec_helper.rb'  e descomentar o código abaixo: 

Capybara.configure do |config|
#config.default_driver = :selenium_chrome


**3 - Automação de back-end <br>**
Desde já peço-lhes desculpas por não realizar essa parte do desafio, tentei através de alguns tutoriais realizar as requisições HTTP para os metódos: GET, POST, PUT, PATCH DELET, porém não obtive muito sucesso quanto os demais desafios

