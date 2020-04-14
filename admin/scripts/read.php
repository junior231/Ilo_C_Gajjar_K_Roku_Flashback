<?php

function getMedia($type)
{
    $pdo = Database::getInstance()->getConnection();
    $queryAll = 'SELECT * FROM tbl_media WHERE Media_type = '.$type;
    $results = $pdo->query($queryAll);

    if ($results) {
        return $results->fetchAll(PDO::FETCH_ASSOC );
    } else {
        return 'There was a problem accessing this info';
    }
}

function getKidsMedia($type){
    $pdo = Database::getInstance()->getConnection();
    $rating = "'G'";
    $queryAll = 'SELECT * FROM tbl_media WHERE Media_rating = '.$rating.' AND  Media_type = '.$type;
    $results = $pdo->query($queryAll);

    if ($results) {
        return $results->fetchAll(PDO::FETCH_ASSOC );
    } else {
        return 'There was a problem accessing this info';
    }
}
