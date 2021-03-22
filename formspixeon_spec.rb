
describe 'Forms', :dropdownn do

    it 'Login com sucesso' do

       visit 'https://the-internet.herokuapp.com/dynamic_loading/1'

       click_button 'Start'

    sleep 3
        
    expect(find('#finish').visible?).to be true
    expect(find('#finish').text).to include 'Hello World!'
      
end

end
