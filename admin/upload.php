    <?php          
        $location = '../pictures';  
        $dir = opendir($location);  
        $file = readdir($dir);  
      
        //while ($file !== false) {  
           //  echo $file . '<br />';  
        //}  
        print_r($file);
        closedir($dir);    
    ?>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
</head>
<body>
<form>
	<input type="file">

</form>
</body>
</html>