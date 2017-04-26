# CalculoIMCJSP

Calculando o Índice de massa corporal com JSP (IMC).

## Para rodar o projeto

### Para fazer clone.

`git clone https://github.com/mayconribeirocosta/CalculoIMCJSP`

### Para rodar com o Tomcat.

`mvnw org.apache.tomcat.maven:tomcat7-maven-plugin:run -Dmaven.tomcat.port=9090`

`ou ./mvnw tomcat7:run`

No Linux, use `./mvnw` ao invés de apenas `mvnw`, como no Windows. Além disso, pelo menos uma vez, é preciso dar permissão de execução ao arquivo de script **mvnw** com o comando `chmod +x mvnw`.

## Para acessar a aplicação

`http://localhost:9090/CalculoIMCJSP` em qualquer navegador.

### Para "empacotar" a aplicação.

`mvnw package`

## Para "preparar" o projeto

### Para "embutir" o Maven no projeto.

Não precisa fazer isso! Já foi feito. 

`mvn io.takari:maven:0.3.3:wrapper -Dmaven=3.3.9`

### Para entender mais sobre bootstrap
`https://www.youtube.com/playlist?list=PLd4yfya-3PIomj2O-W0s9A-0i1ThWJncj`
