<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body>

<div class="container">

  <div class="jumbotron" >
    <img src="logo2.jpg" style="width:500px;height:228px;">
    <h2>Consultas</h2>
  </div>
 <div class="col-md-3">
  <ul class="nav nav-pills nav-stacked">
    <li class="active"><a href="index">Materias</a></li>
    <?php 
        $mate1 = DB::table('materias')->select('nombre')->where('id_materias','=','1')->get();

        echo "<li>";  
        echo "<a href=#>"; 
        echo var_dump($mate1);
        echo "</a>";   
        echo "</li>";




    ?>
    <li><a href="#"><materia2></a></li>
    <li><a href="#"><materia3></a></li>
  </ul>
</div>
  <div>
    
  </div>
  <div class="row">
  <footer class="col-md-4">
</footer>
  </div>
</div>

</body>
</html>