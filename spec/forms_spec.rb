describe 'forms' do
    it 'login com sucesso' do
        visit "https://training-wheels-protocol.herokuapp.com/login"

        fill_in 'username', with: 'stark' #épossivelUsaroID
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true #o expect é a melhor opção dado que tem outros caracteres junto com a msg que vou consultar (area logada)
        expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!" #opção 1
    end
end