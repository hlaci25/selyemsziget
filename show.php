<?
// Created by: Nagy András | www.anagy.eu
// Note: This is a free script released under the Creative Commons Attribution 3.0 license, 
// which means you can use it in any way you want provided you keep links to authors intact.

// FIGYELEM! a cache könyvtárnak írhatónak kell lennie! (chmod: 0777)


// beállítások
$mappa = "photo"; //képek könyvtára

$columns     = 4; //oszlopok száma
$thmb_width  = 120; //bélyegkép szélessége
$thmb_height = 80; //bélyegkép magassága

// innentől ne módosítsd ha nem tudod mit csinálsz!

echo "
<style>
.photo {
    padding:10px;
	border: 1px solid #cccccc;
	background: #E9ECEF;
    font-family: Arial, Helvetica, sans-serif;
    font-weight:normal;
    font-size : 12px;
    text-align:center;

}
#source{
  text-align:right;
  align:right;
  padding-right:10px;
  font-family: Arial, Helvetica, sans-serif;
  font-weight:normal;
  font-size : 10px;
  color:#CCCCCC;
}

a {
    text-decoration:none;
    border:0px;
}

img {
    border:0px;
}
</style>
<script type='text/javascript' src='highslide/highslide-full.js'></script>
<link rel='stylesheet' type='text/css' href='highslide/highslide.css' />
<script type='text/javascript'>
	hs.graphicsDir = 'highslide/graphics/';
	hs.align = 'center';
	hs.transitions = ['expand', 'crossfade'];
	hs.outlineType = 'rounded-white';
	hs.fadeInOut = true;
	hs.dimmingOpacity = 0.75;

	// define the restraining box
	hs.useBox = true;
	hs.width = 640;
	hs.height = 480;

	// Add the controlbar
	hs.addSlideshow({
		//slideshowGroup: 'group1',
		interval: 5000,
		repeat: false,
		useControls: true,
		fixedControls: 'fit',
		overlayOptions: {
			opacity: 1,
			position: 'bottom center',
			hideOnMouseOut: true
		}
	});
</script>
      <table align='center'><tr>"; 

if($open = opendir($mappa))
{
   while(false !== ($file = readdir($open)))
   {
    if($file != "." && $file != "..")
   {
       ++$act;
	   if ($act > $columns) {
        echo "</tr><tr><td class='photo'><a href=\"".$mappa."/".$file."\" class=\"highslide\" onclick=\"return hs.expand(this)\"><img src=\"thumbnail.php?src=".$mappa."/".$file."&w=".$thmb_width."&h=".$thmb_height."&zc=1\" alt=".$file." title=\"Katt a megnyitáshoz\" /></a></td> ";
       $act = 1;
	   } else {
	   echo "<td class='photo'><a href=\"".$mappa."/".$file."\" class=\"highslide\" onclick=\"return hs.expand(this)\"><img src=\"thumbnail.php?src=".$mappa."/".$file."&w=".$thmb_width."&h=".$thmb_height."&zc=1\" alt=".$file." title=\"Katt a megnyitáshoz\" /></a></td> ";
       }
   }
   }
echo "</table>";
} else {
echo "A mappa megnyitása sikertelen!";
}
echo "<div id='source'><a href='http://anagy.eu'>na-Gallery 0.1</a></div>";
?>