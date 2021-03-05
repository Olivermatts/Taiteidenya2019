<?php
/*$servername = "localhost";
$username = "admin";
$password = "Q2werty";
$dbname = "taiteidenya";*/

$servername = "mysql05.domainhotelli.fi";
$username = "eqnffvev";
$password = "NR2MKqx76y.(6c";
$dbname = "eqnffvev_taiteidenya";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

mysqli_set_charset($conn, 'utf8');

//$x1=$_GET['TapahtumaID'];
$x2=$_GET['Jarjestajan_nimi'];
$x3=$_GET['Tapahtuman_nimi'];
$x4=$_GET['Kategorian_nimi'];
$x5=$_GET['Aloitus_Aika'];
$x6=$_GET['Paatymis_Aika'];
$x7=$_GET['Osoite'];
$x8=$_GET['latitude'];
$x9=$_GET['longitude'];
$x10=$_GET['Yhteystiedot'];
$x11=$_GET['Jarjestajan_nettisivut'];
$x12=$_GET['Tapahtumankuvaus'];
$x13=$_GET['tapahtumainfo'];



    echo "<br><br>";
    $cbt="";
    if(isset($_REQUEST["rad1_1"])) $cbt .= "1, ";
    if(isset($_REQUEST["rad1_2"])) $cbt .= "2, ";
    if(isset($_REQUEST["rad1_3"])) $cbt .= "3, ";
    if(isset($_REQUEST["rad1_4"])) $cbt .= "4, ";

    if(isset($_REQUEST["rad2_1"])) $cbt .= "5, ";
    if(isset($_REQUEST["rad2_2"])) $cbt .= "6, ";
    if(isset($_REQUEST["rad2_3"])) $cbt .= "7, ";
    if(isset($_REQUEST["rad2_4"])) $cbt .= "8, ";
    if(isset($_REQUEST["rad2_5"])) $cbt .= "9, ";

    if(isset($_REQUEST["rad3_1"])) $cbt .= "10, ";
    if(isset($_REQUEST["rad3_2"])) $cbt .= "11, ";
    if(isset($_REQUEST["rad3_3"])) $cbt .= "12, ";
    if(isset($_REQUEST["rad3_4"])) $cbt .= "13, ";
    if(isset($_REQUEST["rad3_5"])) $cbt .= "14, ";
    if(isset($_REQUEST["rad3_6"])) $cbt .= "15, ";

    echo "cbt: " . $cbt;

    //seuraavassa tallennetaan tieto tietokantaan, huom. tietokanta vaihtunut
    $sql = "INSERT INTO tapahtumat (Jarjestajan_nimi, Tapahtuman_nimi, Kategoria, Aloitusaika, paattymisaika, Osoite, latitude, longitude, Yhteystiedot, Jarjestajannettisivut, Tapahtumankuvaus, tapahtumainfo, suodatus) VALUES ('$x2','$x3','$x4','$x5','$x6','$x7','$x8','$x9','$x10','$x11','$x12','$x13', '$cbt');";

if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}

$conn->close();
?>

<br>

<button onclick="goBack()">Takaisin</button>

<script>
function goBack() {
  window.history.back();
}
</script>
<button onclick="gohome()">Palaa etusivulle</button>

<script>
function gohome()
{
window.location.href="../index.html"
}
</script>
