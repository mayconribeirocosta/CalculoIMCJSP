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

    

      <form class="form-control" id="formulario">
        <h2 class="form-signin-heading">Calculo IMC</h2>
        
        <fieldset class="form-group">
        
        <div class="Peso">
        <label for="peso" class"sr-only">Peso</label>
        <input type="text" name="peso" class="form-control" placeholder="Digite o peso" required autofocus/>
        

        <div class="Altura">
        <label for="atura" class"sr-only">Altura</label>
        <input type="text"  name="altura" class="form-control" placeholder="Digite a altura" required/>
        

        <div class="Sexo">
        <label for="sexo" class"sr-only">Masculino</label>
        <input type="radio" name="sexo" class="form-control"   required/>
        <label for="sexo" class"sr-only">Feminino</label>
        <input type="radio" name="sexo" class="form-control"   required/>
        
        </p>

        <label for="calculo">IMC:</label>
        <input type="text" name="calculo" class="form-control" disabled="disabled" />
        <a href="#" onclick="calcula_imc();">Calcular</a>  
        </fieldset>



        <%
        String condicao = (String) request.getAttribute("condicao");  
        String altura = request.getParameter("altura");  
        String peso = request.getParameter("peso");  

        imc = Float.parseFloat(peso) / (Float.parseFloat(altura) * Float.parseFloat(altura));  



        if(imc < 18.5)  
        {  
            condicao = "Abaixo do peso";
            <div class="alert alert-warning" role="alert" style="margin-top:45px"><%=condicao%></div>  
        }  
        else  if(imc >= 18.5 & imc < 25)  
            {  
                condicao = "Peso normal"; 
                <div class="alert alert-success" role="alert" style="margin-top:45px"><%=condicao%></div> 
            }  
            else  
                if(imc >= 25 & imc < 30)  
                {  
                    condicao = "Acima do peso";  
                    <div class="alert alert-warning" role="alert" style="margin-top:45px"><%=condicao%></div> 
                }  
                else  
                    if(imc >= 30)  
                    {  
                        condicao = "Obeso";  
                        <div class="alert alert-warning" role="alert" style="margin-top:45px"><%=condicao%></div> 
                    }  

        request.setAttribute("condicao", condicao);  
        out.print(condicao); 

    }  
}
%>
        </div>
       
       
      </form>
  
   </body>
</html>
