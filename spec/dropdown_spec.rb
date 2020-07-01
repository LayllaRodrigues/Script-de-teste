

describe 'Caixa de seleção', :drop do
    
    it 'item especifico simples' do
        visit '/dropdown'
        select('Loki',from:'dropdown')
        sleep 3
    end

    it 'item especifico com o find' do
        visit '/dropdown'
        dropd = find('.avenger-list')
        dropd.find('option',text: 'Scott Lang').select_option
    end
    it 'qualquer item', :sample do 
        visit '/dropdown'
        dropd = find('.avenger-list')
        dropd.all('option').sample.select_option
    end
end