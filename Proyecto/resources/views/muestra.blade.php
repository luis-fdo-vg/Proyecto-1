@extends("materia")

@section("muestra")
  <table>
    <tr>
      <th>Nombre Materia</th>
      <th>Grupo</th>
      <th>Maestro</th>
      <th>Aula</th>
     </tr>
     @foreach($grupos as $grupo)
     <tr>
      <td>{{$grupo->nombre}}</td>
      <td>{{$grupo->id_grupos}}</td>
      <td>{{$grupo->maistro}}</td>
      <td>{{$grupo->nombre_aula}}</td>
     </tr>
     @endforeach 
  </table>
  @stop