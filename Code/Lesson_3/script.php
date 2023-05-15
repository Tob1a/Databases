<?php
$nome = $_POST['name'];
$cognome = $_POST['cognome'];
$data = $_POST['datanascita'];
$indirizzo = $_POST['indirizzo'];
$citta = $_POST['citta'];
$numero = $_POST['numero'];
$cap = $_POST['cap'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Anagrafe</title>
    <link rel="stylesheet" href="css/retro.css">
    <link rel="stylesheet" href="css/mycss.css">
</head>

<body>
    <p>Hai inserito i seguenti dati:</p><br>
    Nome:&nbsp;
    <?php echo $nome . "<br>" ?>
    Cognome:&nbsp;
    <?php echo $cognome . "<br>" ?>
    Data di nascita:&nbsp;
    <?php echo $data . "<br>" ?>
    indirizzo:&nbsp;
    <?php echo $indirizzo . "<br>" ?>
    <?php $indirizzo = $cap . " " .  $citta . " " . $indirizzo . " " . $numero;
    echo $indirizzo ?>
    <br>
    <a href="index.html">Ciaone</a>
</body>

</html>