   
Funcionalidade: Integração das configurações do 'Dashboard' via 'Notus React'
    
Eu, como gestor de configurações do 'Dashboard', gostaria de disponibilizar as configurações raelizadas via 'Notus React' no 'Settings' do 'My Account'
Para que os clientes possam utilizar 
   
Contexto:Como operador do usuário do  Notus React
Quando for realizado configurações na funcioalidade 'Dashboard' via Notus React que sejam integradas corretamente ao acessar o 'Admin Layout Pages'

@Dashboard_Validar Configurações do Flexs-wrap

    Cenário: Validar a alteração da Fonte maiúscula para minúscula dos títulos do 'flex-wrap'
    Dado que foi realizado alteração da fontes dos 'Títulos' dos 'flexs-wrap' via 'Dashboard.js'  
    Quando acessar o Dashboard menu 'Settings'
    Então deve apresentar Fonte minúscula nas descrições dos títulos dos 'flex-wrap'
    E valido se as demais as informações apresentadas no Dashboard do menu 'Settings' se estão corretas


Cenário: Validar no Layout 'Settings' a alteração de posição do 'flex-wrap' com  os títulos 'TRAFFIC' e 'SALES'
    Dado que foi realizado alteração no Layout da posições do 'Flexs-wrap'com os títulos 'TRAFFIC' e 'SALES'
    Quando acessar o Dashboard menu 'Settings'
    Então deve apresentar na primeira posição o 'flex-wrap' com o título 'SALES' 
    E na terceira posição o 'flex-wrap' com o título  'TRAFFIC'
    E valido se as demais as informações apresentadas no Dashboard do menu 'Settings' se estão corretas

@PIX_Validar Exibição dos  novos campos 'hobby' e 'DataNasc' no 'User Information'

    Cenário: Validar exibição dos novos campos 'hobby' e DataNasc no 'User Information'
    Dado foi realizado a inserção no User Information  dos novos campos 'Hobby' e 'DataNasc' 
    Quando acessar o 'My Account' através do Dashboard 
    Então deve apresentar no 'User Information' abaixo dos campos 'First Name' e 'Last Name' os novos campos 'hobby' e 'DataNasc' 
    E não deve impactar a posição dos demais campos do grupo 'My Account' conforme Layout disponibilizado para testes
    E valido as demais informações apresentadas no User Information se estão corretas

@PIX_Validar Exibição do radio button 'include home address ? Yes ou Not  Incluir endereço residencial?'

   Cenário: Validar exibição do radio button 'include home address ?  no 'Contact Information
    Dado foi realizado a inserção no Contact Information  dodo radio button 'home address ?' 
    Quando acessar o 'Contact Information' através do Dashboard 
    Então deve apresentar no 'Contact Information' acima do campo 'address' 
    o radio button 'home address ?'
    E não deve impactar a posição dos demais campos do grupo 'Contact Information' conforme Layout disponibilizado para testes
    E Valido as demais informações contida no Contact Information se estão corretas
    
    Cenário: Validar fucionaliade da seleção da opção 'Yes' do radio button 'include home address ? SIM ou NÃO '  (Incluir endereço residencial?)
    Dado foi realizado a inserção do rádio button 'include home address ? SIM ou NÃO' no 'Contact Information' 
    Quando usuário acessar o 'Contact Information' através do Dashboard 
    E selecionar a opção 'SIM'
    Então deve apresentar no  'Contact Information' novo campo 'home address'
    E não deve impactar a posição dos demais campos do grupo 'Contact Information' conforme Layout disponibilizado para testes
    E Valido as demais informações contida no Contact Information se estão corretas

    Cenário: Validar fucionaliade da seleção da opção 'Not' do radio button 'include home address ? Yes ou Not'  (Incluir endereço residencial?)
    Dado foi realizado a inserção do rádio button 'include home address ? SIM ou NÃO' no 'Contact Information' 
    Quando usuário acessar o 'Contact Information' através do Dashboard 
    E selecionar a opção 'SIM'
    Então deve exibir abaixo do C'ontact Information' um novo grupo 'Contact Information Two' com campos ' Home Address' , 'City Two', 'Country' e 'Postal Code'     
    E não deve impactar a posição dos demais campos do grupo 'Contact Information' conforme Layout disponibilizado para testes
    E Valido as demais informações contida no Contact Information se estão corretas
