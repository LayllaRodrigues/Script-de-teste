describe 'Botões de Radio', :radio do

    before (:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end
   
    it 'seleção por ID' do #usado apenas quando temos ID
        choose('cap')
    end
    it 'seleção por find e ccs selector' do
       find('input[value=the-avengers]').click
    end
    
    after(:each) do
       sleep 3
    end
end