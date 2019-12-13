require 'sinatra'
require './spec/Auto.rb'

@@auto ||=Auto.new

get'/'	do
 erb :Modelo
end

get '/instrucciones' do
	@PosX=params[:PosX]
	@PosY=params[:PosY]
	@orientacion=params[:Orientacion]
	@LimX=params[:Largo]
	@LimY=params[:Ancho]
	@instrucciones= params[:instrucciones]
	@@auto.initializate(params[:PosY].to_i,params[:PosX].to_i,params[:Orientacion])
	@@auto.simular([params[:PosX],params[:PosY],params[:Orientacion]],params[:instrucciones],[params[:mapaX].to_i ,params[:mapaY].to_i])

	
	erb :Vista
end


