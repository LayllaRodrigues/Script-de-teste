describe 'Caixa de seleção', :checkbox do 
    before (:each)do #antes de todos os cenários, ele visita a página pois o método before manda.
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando uma opção' do
        check('thor')
    end
    
    it 'desmarcando uma opção' do #desmarca opções
        uncheck('antman')
    end

    after(:each)do
        sleep 3
    end
end