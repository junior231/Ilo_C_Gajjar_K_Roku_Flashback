<?php
    require_once '../load.php';

    if (isset($_GET['media'])) {
        $type = "'" . trim($_GET["media"]) . "'";
        
        $results = getMedia($type);

        echo json_encode($results);
    }

    if (isset($_GET['kids'])) {
        $type = "'" . trim($_GET["kids"]) . "'";
        
        $results = getKidsMedia($type);

        echo json_encode($results);
    }