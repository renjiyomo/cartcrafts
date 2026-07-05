<?php
// Example database connection configuration.
// Copy this file to cartcraft_db.php and update with your actual credentials.
// Make sure you place this file in the following locations as required by the app:
// - Register/cartcraft_db.php
// - Register/Login/cartcraft_db.php
// - Register/Login/Page/cartcraft_db.php

$conn = mysqli_connect('localhost', 'root', '', 'cart_craft');

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
