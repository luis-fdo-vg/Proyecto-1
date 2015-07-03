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
    <img src="logo2.jpg" style="width:1030px;height:145px;">
    <h2>Consultas</h2>
  </div>
 <div class="col-md-3">
  <ul class="nav nav-pills nav-stacked">
    <li class="active"><a href="..">Materias</a></li>
      @foreach($mates as $mate)
        <li><a href="grupos/{{$mate->id_materias}}">{{$mate->nombre}}</a></li>
        @endforeach
  </ul>
</div>
  <div>
    @yield("muestra")

    


  </div>
  <div class="row">
  <footer class="col-md-4">
</footer>
  </div>
</div>

</body>
</html>