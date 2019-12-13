require_relative 'Auto'


  RSpec.describe Auto do
  	 #orientacion inicial
    it 'Deberia devolver verdad si la orientacion coincide' do
        auto = Auto.new
        orientacion = 'N'
        expect(auto.validarO(orientacion)).to eq (true)
    end

    it 'Deberia devolver verdad si la orientacion coincide' do
        auto = Auto.new
        orientacion = 'S'
        expect(auto.validarO(orientacion)).to eq (true)
    end

    it 'Deberia devolver verdad si la orientacion coincide' do
        auto = Auto.new
        orientacion = 'O'
        expect(auto.validarO(orientacion)).to eq (true)
    end

    it 'Deberia devolver verdad si la orientacion coincide' do
        auto = Auto.new
        orientacion = 'E'
        expect(auto.validarO(orientacion)).to eq (true)
    end

    it 'Deberia devolver falso si la orientacion no existe' do
        auto = Auto.new
        orientacion = 'X'
        expect(auto.validarO(orientacion)).to eq (false)
    end

     it 'Deberia girar a la derecha sin avanzar' do
        auto = Auto.new
        pos = [0,0,'N']
        posFinal = [0,0,'E']
        expect(auto.girarderecha(pos)).to eq (posFinal)
    end
    it 'Deberia girar a la derecha sin avanzar' do
        auto = Auto.new
        pos= [0,0,'S']
        posFinal = [0,0,'O']
        expect(auto.girarderecha(pos)).to eq (posFinal)
    end

     it 'Deberia girar a la izquierda sin avanzar' do
        auto = Auto.new
        pos = [0,0,'N']
        posFinal = [0,0,'O']
        expect(auto.girarizquierda(pos)).to eq (posFinal)
    end
     it 'Deberia girar a la izquierda sin avanzar' do
        auto = Auto.new
        pos = [0,0,'O']
        posFinal = [0,0,'S']
        expect(auto.girarizquierda(pos)).to eq (posFinal)
    end

    it 'Deberia iniciar en la posicion inserta, y avanzar en orientacion NORTE' do
        auto = Auto.new
        pos = [0,0,'N']
        posFinal = [1,0,'N']
        expect(auto.avanzar(pos)).to eq (posFinal)
    end

    it 'Deberia iniciar en la posicion inserta, y avanzar en orientacion ESTE' do
        auto = Auto.new
        pos = [0,0,'E']
        posFinal = [0,1,'E']
        expect(auto.avanzar(pos)).to eq (posFinal)
    end

    it 'Deberia iniciar en la posicion inserta, y avanzar en orientacion OESTE' do
        auto = Auto.new
        pos = [2,4,'O']
        posFinal = [2,3,'O']
        expect(auto.avanzar(pos)).to eq (posFinal)
    end

    it 'Deberia iniciar en la posicion inserta, y avanzar en orientacion SUR' do
        auto = Auto.new
        pos = [2,2,'S']
        posFinal = [1,2,'S']
        expect(auto.avanzar(pos)).to eq (posFinal)
    end

    it 'Deberia iniciar en la posicion inserta, y avanzar en orientacion SUR' do
        auto = Auto.new
        pos = [5,5,'S']
        posFinal = [4,5,'S']
        expect(auto.avanzar(pos)).to eq (posFinal)
    end

    it 'Deberia recibir una posicion inicial, instrucciones de movimiento y el tamaño del mapa, con los datos simulara un recorrido' do
        auto = Auto.new
        pos = [1,1,'N']
        instrucciones = 'ADAAIA'
        tamMapa = [5,5]
        posFinal = [3,3,'N']
        expect(auto.simular(pos,instrucciones, tamMapa)).to eq (posFinal)
    end

    it 'Deberia simular el recorrido hasta que se salga del mapa ' do
        auto = Auto.new
        pos = [2,2,'E']
        instrucciones = 'ADAAIDD'
        tamMapa = [5,5]

        posFinal = [0,3,'O']
        expect(auto.simular(pos,instrucciones, tamMapa)).to eq (posFinal)

  end

	
   end
   
    

    

   

   