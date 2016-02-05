<style>
    .atp-title {
        padding: 10px 10px 10px 10px;
        background-image: linear-gradient(0deg, #AC3700, #AC3700);
        color: white;
    }
</style>

<nav class="navbar navbar-default">
    <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
            <li class="active">
                <a href="#">Home</a>
            </li>
            <li>
                <a href="#">Classement</a>
            </li>
            <li>
                <a href="#">Joueurs</a>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="#">Admin</a>
            </li>
        </ul>
    </div>
</nav>

<div class="atp-title"><h1>ATP</h1><h5>Phalcon MVC Application</h5></div>

<div>
    <?php
    $connection = new \Phalcon\Db\Adapter\Pdo\Mysql(array(
        'host' => 'localhost',
        'dbname' => 'atp',
        'username' => 'root',
        'password' => 'Flocon123',
        'options' => [PDO::ATTR_CASE => PDO::CASE_LOWER, PDO::ATTR_PERSISTENT => TRUE,],
    ));

    $result = $connection->query("SELECT * FROM joueur");
    $result->setFetchMode(Phalcon\Db::FETCH_NUM);
    echo "<table class='table'><th>Flag</th><th>Prénom</th><th>Nom</th><th>Code Pays</th>";
    while($joueur = $result->fetch()){
        echo "<tr><td class='flag'></td><td>$joueur[1]</td><";
        echo "<td>$joueur[2]</td>";
        echo "<td>$joueur[3]</td></tr>";
    }
    echo "</table>";
    ?>
</div>