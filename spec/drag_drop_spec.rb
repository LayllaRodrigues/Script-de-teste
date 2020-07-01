describe 'Drag and Drop', :drag do

    before(:each) do
        visit 'https//trainning-wheels-protocol.herokuapp.com/drag_and_drop'

    it 'homem aranha pertence ao time do stark'

     stark = find('.team-stark .column')

     spidermam = find('img[alt$=aranha]')
     spiderman.drag_to stark
    
     end

end

