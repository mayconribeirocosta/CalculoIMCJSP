<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="exemplo-css\meu-estilo.css">
    
    
<title>Calculo IMC</title>
  </head>
  

  <body>

    
<div class="col-md-12">
    <div class="modal-content">
      <form name="formulario">
        <h2 class="form-signin-heading">Calculo IMC</h2>
        
        <fieldset class="form-group">
        <form method="GET">

        <div class="Peso">
        <label for="peso" class"sr-only">Peso</label>
        <input type="text" name="peso" class="form-control" placeholder="Digite o peso" required autofocus/>
        

        <div class="Altura">
        <label for="atura" class"sr-only">Altura</label>
       <input type="text"  name="altura" class="form-control" placeholder="Digite a altura" required/>
        

        <div class="Sexo">
        <label for="sexo" class"sr-only">Masculino</label>
      <input type="radio" name="sexo"    required/>
        <label for="sexo" class"sr-only">Feminino</label>
        <input type="radio" name="sexo"    required/>
        <br>
        <input type="submit" </a>
        <p>
        
        
        

          
        </fieldset>



 
 
        </div>
       
       
      </form>
  
   </body>
</html>

        </div>


<%!boolean inicioPeso(float peso) {
    return peso<=0;
}%>
<%!boolean inicioAltura(float altura) {
    return altura<=0;
}%>
<%!boolean inicioImc(float imc) {
    return imc<=0;
}%>

<%        
        String alturaStr = request.getParameter("altura");
        alturaStr = alturaStr == null ? "0" : alturaStr;
        float altura = Float.parseFloat(alturaStr);
        boolean inicioAltura =inicioAltura(altura);

        String pesoStr = request.getParameter("peso"); 
        pesoStr= pesoStr == null ? "0" : pesoStr;
        float peso = Float.parseFloat(pesoStr);
        boolean inicioPeso = inicioPeso(peso);

        String imcStr = request.getParameter("imc");
        imcStr = imcStr == null ? "0" : imcStr;
        float imc = Float.parseFloat(imcStr);
        boolean inicioImc =inicioImc(imc);

        imc = peso / (altura * altura);
        String condicao = "";     
        

       if (inicioAltura || inicioPeso) {
            
            out.println("IMC invalido ou nenhum IMC foi calculado ainda");
       }
        else{ 

            if(imc < 18.5)  { 
                condicao = "Voce esta abaixo do peso"; 
            
               
             }
              else  if(imc >= 18.5 && imc < 25) {  
                condicao = "Voce esta no peso normal"; 
                
            }  
             else  if(imc >= 25 && imc < 30)  {  
                    condicao = "Voce esta acima do peso";  
                   
                }  
                 else  if(imc >= 30)  {  
                        condicao = "Voce esta obeso";  
                        
                    }
                   
             request.setAttribute("condicao", condicao);  
                    condicao = (String) request.getAttribute("condicao");
                    request.setAttribute("imc", imc);  
                    imc = (Float) request.getAttribute("imc");       
                    out.println(condicao +"<br/>"+"<br/>");
                    out.println("O IMC eh : " + imc);    
                   
        }
         
        
       
        
        
        

      
       

%>




    </div>
  </body>
</html>