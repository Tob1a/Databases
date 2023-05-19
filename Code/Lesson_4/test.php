<?php
/**
 * Questo file PHP esegue solamente il test della connessione al database.
 * Mostra "Ok!" oppure la spiegazione dell'errore.
 */

// Connessione 
$link = mysqli_connect("localhost", "tobia", "password", "Azienda");	// db_ip, db_username, db_password, db_name

// Controllo se è avvenuta la connessione al database:
if (!$link) {
    echo "Si è verificato un errore: Non riesco a collegarmi al database" . PHP_EOL;
    echo "Codice errore: " . mysqli_connect_errno() . PHP_EOL;
    echo "Messaggio errore: " . mysqli_connect_error() . PHP_EOL;
    exit(-1);
}

echo "OK!" . PHP_EOL;

mysqli_close($link);

?>

