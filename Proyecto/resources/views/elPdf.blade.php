<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PDF</title>
  </head>
  <body>
 
    <main>
      <div id="details" class="clearfix">
        <div id="elPdf">
          <img src="logo2.jpg" style="width:700px;height:145px;">
          <div class="date">fecha de consulta: {{ $date }}</div>
          @foreach($grupos as $grupo)
            <h1 align="center">Grupo {{$grupo->id_grupos}}</h1>
            <h2 align="center">Aula {{$grupo->nombre_aula}}</h2>
            <h3 align="center">{{$grupo->maistro}}</h3>
            <h4 align="center">{{$grupo->nombre}}</h4>
          @endforeach 
        </div>
      </div>
      <table align="center" border="1" cellspacing="1" cellpadding="1">
      @foreach($alems as $alem)
      <tr>
        <td>{{$alem->nombre_alumno}}</td>
      </tr>
     @endforeach 
 
      </table>
  </body>
</html>