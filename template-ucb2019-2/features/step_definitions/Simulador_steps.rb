Given("Cuando estoy en la pagina principal") do
  visit '/'
end
Given("Ingreso las coordenadas iniciales {int},{int} y la cadena de instrucciones {string} en los input {string} y {string} y {string}") do |int, int2, string, string2,string3,string4|     
 fill_in(string2, :with => int)
  fill_in(string3, :with => int2)
  fill_in(string4, :with => string)
end
When("Presiono el Boton {string}") do |string|
  click_button(string)
end

Then("Deberia ir a la pagina de resultados.") do
  visit '/instrucciones/'
end 




#Then("Deberia ir a la pagina de resultados.") do
 # visit '/instrucciones'



# ---------------------------------------------------------


