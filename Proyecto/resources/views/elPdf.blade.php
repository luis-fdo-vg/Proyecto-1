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
          <div class="date">fecha de consulta: {{ $date }}</div>
          @foreach($grupos as $grupo)
            <h1>Grupo {{$grupo->id_grupos}}</h1>
            <h2>Aula {{$grupo->nombre_aula}}</h2>
            <h3>{{$grupo->maistro}}</h3>
            <h4>{{$grupo->nombre}}</h4>
          @endforeach 
        </div>
      </div>
      <table border="1" cellspacing="1" cellpadding="1">
      @foreach($alems as $alem)
      <tr>
        <td>{{$alem->nombre_alumno}}</td>
      </tr>
     @endforeach 
 
      </table>
  </body>
</html>