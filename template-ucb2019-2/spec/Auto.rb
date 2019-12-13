class Auto
		attr_accessor :posY
		attr_accessor :posX
		attr_accessor :orientacion
		attr_accessor :y
		attr_accessor :x
		attr_accessor :o

def initializate ( y , x , o)
		@posY=y
		@posX=x
        @orientacion=o
        
        
    end

#Para rspec

def validarO(orientacion)
	if(orientacion=='N'||orientacion=='E'||orientacion=='O'||orientacion=='S')
		return true
	else
		return false
	end
end

#metodos de auto
def girarderecha(pos)
@orientacion=pos[2]
if(@orientacion=='N')
	@orientacion='E'
elsif(@orientacion=='E')
	@orientacion='S'
elsif(@orientacion=='S')
	@orientacion='O'
elsif(@orientacion=='O')
	@orientacion='N'
  end

  return [@PosY.to_i,@PosX.to_i,@orientacion]
end


def girarizquierda(pos)
@orientacion=pos[2]
if(@orientacion=='N')
	@orientacion='O'
elsif(@orientacion=='E')
	@orientacion='N'
elsif(@orientacion=='S')
	@orientacion='E'
elsif(@orientacion=='O')
	@orientacion='S'
  end
  return [@PosY.to_i,@PosX.to_i,@orientacion]
end

def avanzar(pos)
	@orientacion=pos[2]
	@PosX=pos[1]
	@PosY=pos[0]


                if(@orientacion=='N')
						@PosY+=1
					
				end
				if(@orientacion=='E')
						@PosX+=1
					
				end
				if(@orientacion=='S')
					if(@PosY-1>=0)
						@PosY-=1
					end
				end
				if(@orientacion=='O')
					if(@PosX-1>=0)
					@PosX-=1
					end
				end

				return [@PosY,@PosX,@orientacion]
            

end


def simular(pos, instrucciones, tamMapa)

	@PosX=pos[1].to_i
	@PosY=pos[0].to_i
	
    		
    		arreglo = instrucciones.chars
    		o= pos
        
        for i in 0..arreglo.length do 

        	@orientacion=o[2]
        	
            if(arreglo[i]=='D')
            	o=girarderecha(o)
            end

            if(arreglo[i]=='I')
                o=girarizquierda(o)
            end

            if (arreglo[i]=='A')
                if(@orientacion=='N')
                	if(@PosY + 1<= tamMapa[0].to_i)
						@PosY+=1
					end
				end
				if(@orientacion=='E')
					if(@PosX + 1<= tamMapa[1].to_i)
						@PosX+=1
					end
				end
				if(@orientacion=='S')
					if(@PosY-1>=0)
						@PosY-=1
					end
				end
				if(@orientacion=='O')
					if(@PosX-1>=0)
					@PosX-=1
					end
				end
            end

        	

         end
        
        return [@PosY,@PosX,@orientacion]
end
end