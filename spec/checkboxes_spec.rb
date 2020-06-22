describe 'Caixa de seleção', :checkbox do 
    before (:each)do #antes de todos os cenários, ele visita a página pois o método before manda.
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando uma opção' do
        check('thor')
    end

    after(:each)do
        sleep 3
    end
end