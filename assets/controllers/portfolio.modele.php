<?php
function getAllProjet() {
    global $db;
    $select = $db->query('SELECT * FROM projets');
    $select->execute();
    return $select->fetchAll();
}

?>