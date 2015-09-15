###############################################
        na-Gallery Script            
            PHP Version 0.1                   
###############################################
Created by: Nagy András | www.anagy.eu

This is a free script released under the Creative Commons Attribution 3.0 license, 
which means you can use it in any way you want provided you keep links to authors intact.
###############################################

====================
Alapvetõ Információk
====================

Ez a script egyszerû kis galáriákhoz készült (kevesebb mint 100 kép). 

A képeket ftp-vel kell feltölteni a megadott mappába, eztán automatikusan tesz a dolgát.


================
Fájlok és mappák		//minden fájl és mappa áthelyezve a gyökérkönyvtárba!
================
index.php		- Ez a fájl jeleníti meg a galériát //átnevezve show.php 
readme.txt		- Ismertetõ a scripthez
thumbnail.php	        - Ez a fájl készíti el a bélyegképeket ésgondoskodik a megjelenítésrõl 
cache                   - Ebbe a mappába kerülnek a bélyegképek, a mappának írhatónak kell lennie
photo                   - Alapértelmezésben ebbe a mappába kell feltölteni a megjeleníteni kívánt fotókat
highslide               - A mappa és a tartalma gondoskodik az esztétikus kép megjelenítésrõl

===============
Telepítés
===============
1. Nyisd meg az index.php fájlt egy szerkesztõ programmal és végezd el a szükséges 
   beállításokat (ha nem módosítassz semmit akkor az rögzített beállításokkal fog mûködni a script.
2. Töltsd fel a mappában található fájlokat és könyvtárakat egy általad kiválasztott mappába.
3. Állítsd be a cache mappa jogosultságait 777-re.
4. Töltsd fel a képeket (ha nem végeztél módosítást az index.php-ban) a photo mappába.
5. Nyisd meg a böngészõdben az index.php-t (pl. http://te.oldalad.hu/mappád/index.php)


===============
Megjegyzés
===============
Az elsõ alkalommal mikor a böngészõdben meghívod az index.php fájlt készíti el a script a bélyegképeket 
vagy ha késõbb újabb képeket töltessz fel, ilyenkor lassú lehet a betöltõdés. 

================
Script mûködés közben
================

A scriptet megtekintheted mûködés közben:
http://anagy.eu/index.php?id=gallery

