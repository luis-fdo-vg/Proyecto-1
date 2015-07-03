@extends("materia")

@section("muestra")
  <table border="1" cellspacing="1" cellpadding="1">
    <tr>
      <th>Nombre Materia</th>
      <th>Grupo</th>
      <th>Maestro</th>
      <th>Aula</th>
     </tr>
     @foreach($grupos as $grupo)
     <tr>
      <td>{{$grupo->nombre}}</td>
      <td><a href="pdf/{{$grupo->id_grupos}}">{{$grupo->id_grupos}}</a></td>
      <td>{{$grupo->maistro}}</td>
      <td>{{$grupo->nombre_aula}}</td>
     </tr>
     @endforeach 
  </table>
  @stop