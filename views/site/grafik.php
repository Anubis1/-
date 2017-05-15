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
   $array=array();
     $arrays=array();
   $i=0;
foreach ( $model as $movie ) {
echo ' <tr>';
$i=0;
foreach ( $movie as $key => $value ) {
	if($i==1)$id=$value;
	if($id[0]=="#")$id="Heshtegs";
	if($i==4)$arrays[$id]+=$value;
echo "<td>$value</td>";
$i++;
}
echo '</tr>';
}
?>




  
  </table>
  
  
  <table border="1">
   <caption>Таблица размеров обуви</caption>
   <tr>
    <th>activity</th>
	 <th>duration</th>
	 
   </tr>
 <tr>
   <?php
   $d='';
foreach ( $arrays as $key => $value ) {
	echo '<tr>';
echo "<td>$key</td><td>$value</td>";
$d.=$value;
}
echo '</tr>';


?> 

  
 