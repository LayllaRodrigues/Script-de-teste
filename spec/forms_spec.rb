describe 'forms' do
    it 'login com sucesso' do
        visit "/login"

        fill_in 'username', with: 'stark' #épossivelUsaroID
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true #o expect é a melhor opção dado que tem outros caracteres junto com a msg que vou consultar (area logada)
        expect(find('#flash').text).to include "Olá, Tony Stark. Você acessou a área logada!" #opção 1
        expect(find('#flash')).to have_content "Olá, Tony Stark. Você acessou a área logada!" #opção 2 verifica se existe ese txt no site
    end
end