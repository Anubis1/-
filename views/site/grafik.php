  <style>
  
  
  th {
    padding: 9px;
}
td, th {
    padding: 5px;
    padding: 4px;
    text-align: center;
}</style>
 
 
 <table border="1">
   <caption>Таблица размеров обуви</caption>
   <tr>
    <th>id</th>
    <th>activity</th>
    <th>project</th>
    <th>workers</th>
	 <th>duration</th>
	  <th>time</th>
	 
   </tr>
 
   <?php
foreach ( $model as $movie ) {

 

  echo ' <tr>';

 

  foreach ( $movie as $key => $value ) {

    echo "<td>$value</td>";

  }

 

  echo '</tr>';

}

	
 //  var_dump($model);


   
   
/*
foreach ($result as $m): ?>
 
<?php endforeach;*/?>




  
  </table>
  
  
  <table border="1">
   <caption>Таблица размеров обуви</caption>
   <tr>
    <th>activity</th>
	 <th>duration</th>
	 
   </tr>
 
   <?php
foreach ( $new as $movie ) {
echo ' <tr>';
foreach ( $movie as $key => $value ) {
echo "<td>$value</td>";
}
echo '</tr>';

}
?> 
  </table>
  
 