<%-- 
    Document   : index2
    Created on : 28/03/2018, 14:41:31
    Author     : Nando Luz
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="pt-br">
    <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=devicre-width, initial-scale=1">
            <link rel="shortcut icon" href="imagens/favicon/favicon.ico" type="image/x-icon" />
            
            <!--Stylos da pagina-->
            <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css">
            <link rel="stylesheet" href="resources/css/style.css">
            
            
            <!--Scripts da pagina-->
            <script src="bootstrap/js/bootstrap.js"></script>
            
            <!--titulo da pagina-->
            <title>Gente Telecom</title>
    </head>
    
    
    <body class="home blog geral">        
        <header id="page-header">
            <nav role="navigation" class="navbar">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <!-- THE LOGO -->
                        <a target="_blank" class="navbar-brand " href="http://www.gentetelecom.com.br/" rel="home">
                            <img src="imagens/logotipo.png">
                        </a>
                        <hr>
                    </div><!-- fim da navbar-header -->
                </div><!-- fim do container -->
            </nav><!-- fim da navbar navbar-default navbar-fixed-top-->
        </header>
        
        
        
        <div class="container-fluid">
            <div class="row">
                  <div class='col-md-4'></div>
                  <div class="col-md-4">
                      <div class="login-box well">
                          <div class="text-center">
                              <br><br>
                          </div>

                              <form>
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Endereço de Email</label>
                                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="exemplo@servico.com">
                                      <small id="emailHelp" class="form-text text-muted">Nunca vamos compartilhar seu e-mail com mais ninguém.</small>
                                    </div>
                                    <div class="form-group">
                                      <label for="exampleInputPassword1">Senha</label>
                                      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha">
                                    </div>
                                    <div class="form-check">
                                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                      <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Entrar</button>
                                    <p><a href="pages/home.jsp">home</a></p>
                              </form>

                      </divclass>
                  </div>
              </div>

            </div>
        </div>
       
       
      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron innerjumbotron"  id="large-header">
          <canvas id="demo-canvas"></canvas>
      </div>
      <!-- /.jumbotron --> 


      <!-- Inicio animação -->
      <script type='text/javascript' src='resources/js/animation/jquery.form.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/TweenLite.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/EasePack.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/device.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/isotope.pkgd.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/jquery.ba-bbq.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/bootstrap.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/bootstrap-hover-dropdown.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/jquery.bxslider.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/classie.js?ver=2.3.0'></script>
      <script type='text/javascript' src='resources/js/animation/jquery.viewportchecker.js'></script>
      <script type='text/javascript' src='resources/js/animation/main.js'></script>
      <script type='text/javascript' src='resources/js/animation/core.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/datepicker.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/wp-embed.min.js'></script>
      <script type='text/javascript' src='resources/js/animation/jsanim.js'></script>
      <!-- Fim animação-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="resources/bootstrap/js/bootstrap.js"></script>
    </body>
</html>