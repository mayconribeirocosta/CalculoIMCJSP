# CalculoIMCJSP

Calculando o �ndice de massa corporal com JSP (IMC).

## Para rodar o projeto

### Para fazer clone.

`git clone https://github.com/mayconribeirocosta/CalculoIMCJSP`

### Para rodar com o Tomcat.

`mvnw org.apache.tomcat.maven:tomcat7-maven-plugin:run -Dmaven.tomcat.port=9090`

`ou ./mvnw tomcat7:run`

No Linux, use `./mvnw` ao inv�s de apenas `mvnw`, como no Windows. Al�m disso, pelo menos uma vez, � preciso dar permiss�o de execu��o ao arquivo de script **mvnw** com o comando `chmod +x mvnw`.

## Para acessar a aplica��o

`http://localhost:9090/CalculoIMCJSP` em qualquer navegador.

### Para "empacotar" a aplica��o.

`mvnw package`

## Para "preparar" o projeto

### Para "embutir" o Maven no projeto.

N�o precisa fazer isso! J� foi feito. 

`mvn io.takari:maven:0.3.3:wrapper -Dmaven=3.3.9`

### Para entender mais sobre bootstrap
`https://www.youtube.com/playlist?list=PLd4yfya-3PIomj2O-W0s9A-0i1ThWJncj`
