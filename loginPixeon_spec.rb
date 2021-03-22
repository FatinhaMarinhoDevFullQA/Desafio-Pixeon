describe 'Forms' do 

    it 'Login com sucesso' do 
    visit 'https://the-internet.herokuapp.com/login'
    fill_in 'username', with: 'tomsmith'
    fill_in 'password', with: 'SuperSecretPassword!'
    click_button 'Login'
    expect(find('#flash').visible?).to be true
    # expect(find('#flash').text).to include 'Hi, admin. You have accessed the logged in area!'     
    expect(find('#flash')).to have_content 'You logged into a secure area!'    
    
    
    end
end

describe 'forms' do

it 'Login com senha incorreta' do
    visit 'https://the-internet.herokuapp.com/login'
    fill_in 'username', with: 'tomsmith'
    fill_in 'password', with: 'admin01'
    click_button 'Login'
    expect(find('#flash').visible?).to be true
    expect(find('#flash').text).to include 'Your password is invalid!'
        
end
end
    
describe 'forms' do
    it 'Usuário inválido - Não Casdatrado' do 
    visit 'https://the-internet.herokuapp.com/login'
    
    fill_in 'username', with: 'admin0'
    fill_in 'password', with: 'SuperSecretPassword!'
    click_button 'Login'
    # expect(find('#flash').visible?).to be true
    # expect(find('#flash').text).to include 'Your username is invalid!'
    expect(find('#flash')).to have_content 'Your username is invalid!'
end

# after(:each) do |e| 
#     nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
#     page.save_screenshot ('log/' + nome + '.png')
    
#     end
end