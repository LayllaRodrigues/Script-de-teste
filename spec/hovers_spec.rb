describe 'Mouse Hover', :hovers do

   before(:each) do
     visit 'https://training-wheels-protocol.herokuapp.com/hovers'
   end

    it 'quando passo o mouse sobre o blade' do
        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    after (:each) do   
     sleep 2 
    end
end