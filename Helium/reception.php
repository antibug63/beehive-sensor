// sur le serveur dedier avec mysql

login as: root
root@89.234.132.202's password:
Linux jerome-test 5.11.22-7-pve #1 SMP PVE 5.11.22-12 (Sun, 07 Nov 2021 21:46:36                                                                                                                                                              +0100) x86_64

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
You have mail.
Last login: Sun Feb  6 11:02:29 2022 from 82.65.41.118
root@jerome-test:~# aptitude updage graphana
Commande inconnue « updage »
aptitude 0.8.11
Utilisation : aptitude [-S NomFichier] [-u|-i]
       aptitude [options] <action> ...

Actions (if none is specified, aptitude will enter interactive mode):

 install         Install/upgrade packages.
 remove          Remove packages.
 purge           Remove packages and their configuration files.
 hold            Place packages on hold.
 unhold          Cancel a hold command for a package.
 markauto        Mark packages as having been automatically installed.
 unmarkauto      Mark packages as having been manually installed.
 forbid-version  Forbid aptitude from upgrading to a specific package version.
 update          Download lists of new/upgradable packages.
 safe-upgrade    Perform a safe upgrade.
 full-upgrade    Perform an upgrade, possibly installing and removing packages.
 build-dep       Install the build-dependencies of packages.
 forget-new      Forget what packages are "new".
 search          Search for a package by name and/or expression.
 show            Display detailed info about a package.
 showsrc         Display detailed info about a source package (apt wrapper).
 versions        Displays the versions of specified packages.
 clean           Erase downloaded package files.
 autoclean       Erase old downloaded package files.
 changelog       View a package's changelog.
 download        Download the .deb file for a package (apt wrapper).
 source          Download source package (apt wrapper).
 reinstall       Reinstall a currently installed package.
 why             Explain why a particular package should be installed.
 why-not         Explain why a particular package cannot be installed.

 add-user-tag    Add user tag to packages/patterns.
 remove-user-tag Remove user tag from packages/patterns.

Options:
 -h              This help text.
 --no-gui        Do not use the GTK GUI even if available.
 -s              Simulate actions, but do not actually perform them.
 -d              Only download packages, do not install or remove anything.
 -P              Always prompt for confirmation of actions.
 -y              Assume that the answer to simple yes/no questions is 'yes'.
 -F format       Specify a format for displaying search results; see the manual.
 -O order        Specify how search results should be sorted; see the manual.
 -w width        Specify the display width for formatting search results.
 -f              Aggressively try to fix broken packages.
 -V              Show which versions of packages are to be installed.
 -D              Show the dependencies of automatically changed packages.
 -Z              Show the change in installed size of each package.
 -v              Display extra information. (may be supplied multiple times).
 -t [release]    Set the release from which packages should be installed.
 -q              In command-line mode, suppress the incremental progress
                  indicators.
 -o key=val      Directly set the configuration option named 'key'.
 --with(out)-recommends     Specify whether or not to treat recommends as
                            strong dependencies.
 -S fname        Read the aptitude extended status info from fname.
 -u              Download new package lists on startup.
                  (interfaces texte seulement)
 -i              Perform an install run on startup.
                  (interfaces texte seulement)

See the manual page for a complete list and description of all the options.

This aptitude does not have Super Cow Powers.
root@jerome-test:~# aptitude upgrade
Les paquets suivants seront mis à jour :
  grafana tzdata
2 paquets mis à jour, 0 nouvellement installés, 0 à enlever et 0 non mis à jour.
Il est nécessaire de télécharger 73,0 Mo d'archives. Après dépaquetage, 67,1 Mo                                                                                                                                                              seront utilisés.
Voulez-vous continuer ? [Y/n/?] Y
Prendre :  1 http://ftp.debian.org/debian buster-updates/main amd64 tzdata all 2                                                                                                                                                             021a-0+deb10u3 [266 kB]
Prendre :  2 https://packages.grafana.com/oss/deb stable/main amd64 grafana amd6                                                                                                                                                             4 8.3.4 [72,7 MB]
 73,0 Mo téléchargés en 3s (24,5 Mo/s)
Lecture des fichiers de modifications (« changelog »)... Terminé
Préconfiguration des paquets...
(Lecture de la base de données... 60062 fichiers et répertoires déjà installés.)
Préparation du dépaquetage de .../tzdata_2021a-0+deb10u3_all.deb ...
Dépaquetage de tzdata (2021a-0+deb10u3) sur (2021a-0+deb10u2) ...
Préparation du dépaquetage de .../grafana_8.3.4_amd64.deb ...
Dépaquetage de grafana (8.3.4) sur (7.3.7) ...
Paramétrage de tzdata (2021a-0+deb10u3) ...

Current default time zone: 'Europe/Paris'
Local time is now:      Sun Feb  6 18:04:17 CET 2022.
Universal Time is now:  Sun Feb  6 17:04:17 UTC 2022.
Run 'dpkg-reconfigure tzdata' if you wish to change it.

Paramétrage de grafana (8.3.4) ...
Installation de la nouvelle version du fichier de configuration /etc/default/gra                                                                                                                                                             fana-server ...
Installation de la nouvelle version du fichier de configuration /usr/lib/systemd                                                                                                                                                             /system/grafana-server.service ...
Restarting grafana-server service... OK
Traitement des actions différées (« triggers ») pour ntp (1:4.2.8p12+dfsg-4) ...
Traitement des actions différées (« triggers ») pour systemd (241-7~deb10u8) ...

État actuel : 0 (-2) upgradable.
root@jerome-test:~# service apache2 restart
root@jerome-test:~# cd /var/www/meteo/
root@jerome-test:/var/www/meteo# vim index.php
<?php

//Make sure that it is a POST request.
if(isset($_SERVER['REQUEST_METHOD']) && $_SERVER['REQUEST_METHOD']!=='POST'){
    throw new Exception('Request method must be POST!');
}

//Make sure that the content type of the POST request has been set to application/json
$contentType = isset($_SERVER["CONTENT_TYPE"]) ? trim($_SERVER["CONTENT_TYPE"]) : '';
if(strcasecmp($contentType, 'application/json') != 0){
    throw new Exception('Content type must be: application/json');
}

//Receive the RAW post data.
$content = trim(file_get_contents("php://input"));
//Attempt to decode the incoming RAW post data from JSON.
$decoded = json_decode($content, true);
var_dump( $content);


// If json_decode failed, the JSON is invalid.
if(!is_array($decoded)){
    throw new Exception('Received content contained invalid JSON!');
}

//Process the JSON.

// Create connection
$servername = "localhost";
$username = "YOURUSERNAME";
$password = "YOURPASSWORD";
$dbname = "YOURDBNAME";

$myConnection= mysqli_connect($servername,$username,$password,$dbname) or die ("could not connect to mysql");
                $date = date("Y-m-d H:i:s");
                $app_eui = $decoded['payload'];
                $devaddr = $decoded['devaddr'];
                $dev_eui = $decoded['dev_eui'];
                $name = $decoded['name'];
                $bat =   $decoded['decoded']['payload']['bat'];
                $poid =  $decoded['decoded']['payload']['poid'];
                $hext =  $decoded['decoded']['payload']['hext'];
                $text =  $decoded['decoded']['payload']['text'];
                $tint1 = $decoded['decoded']['payload']['int1'];
                $tint2 = $decoded['decoded']['payload']['int2'];






$sqlCommand="INSERT INTO helium(date, app_eui, devaddr, dev_eui, name, bat, poid, hext, text, tint1, tint2 ) VALUES('$date', '$app_eui', '$devaddr', '$dev_eui', '$name', $bat, $poid, $hext, $text, $tint1, $tint2)";
error_log($sqlCommand);// Modifier le nom de la base .

$query=mysqli_query($myConnection, $sqlCommand) or die(mysqli_error($myConnection));

?>

~
~
~
~
-- VISUEL --                                                                                                                                                                                                     56        56,0-1       Tout
