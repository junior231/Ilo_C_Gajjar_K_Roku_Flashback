<?php

require('connect.php');

function getUser($conn) {
    $getData = 'SELECT * FROM users';
    $runQuery = $conn->query($getData);

    $results = array();

    while($row = $runQuery->fetch(PDO::FETCH_ASSOC)) {
        $results[] = $row;

    }

    return $results;
}