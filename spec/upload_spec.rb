describe 'upload', :tt do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/imagem.png'
    end

    it 'upload com arquivo texto' do
        attach_file('file-upload',@arquivo)
        click_button 'upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'upload de imagem' do
        attach_file('file-upload',@imagem)
        click_button 'upload'

        sleep 10

        img = find('#new-image')
        expect(img[:src]).to include '/uploads/imagem.png'
    end

    after(:each)do
        sleep 3
    end

end