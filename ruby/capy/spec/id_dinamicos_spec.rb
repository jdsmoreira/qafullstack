describe 'IDs Dinâmicos', :ids_dinamicos do
    before(:each) do
        visit "http://training-wheels-protocol.herokuapp.com/access"
      end

    #   $ => termina com
    #   ^ => começa com
    #   * => contém

      it 'cadastro' do
        find('input[id$=UsernameInput]').set 'jeferson'
        find('input[id^=PasswordInput]').set '123456'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
      end
    
      
end