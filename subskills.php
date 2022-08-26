<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.js-example-basic-multiple').select2();
        });
    </script>

</head>

<body>








    <?php

    function getParams()
    {
        return !empty($_GET) ? $_GET : [];
    }

    // modifie l'url 
    function buildQuery($params = array())
    {
        $tmp = array();
        foreach ($params as $param => $value) {
            if (is_array($value)) {
                foreach ($value as $field => $fieldvalue) $tmp[] = sprintf('%s[]=%s', $param, $fieldvalue);
            } else $tmp[] = sprintf('%s=%s', $param, $value);
        }
        return urldecode(implode('&', $tmp));
    }
    // connexion à la base de donnée 
    $pdo = new PDO("mysql:host=localhost;dbname=subskills;charset=utf8", "root", "");
    $con = mysqli_connect('localhost', 'root', '', 'subskills');

    // on recupere les filtres dans la base de donnée 
    $query = "SELECT * FROM filter ";

    $params = getParams();

    $query_run = mysqli_query($con, $query);





    ?>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <form action="" method="GET">
                        <div class="card-header">
                            <h5>
                                <input type='hidden' name='page' value='<?= isset($_GET['page']) ? $_GET['page'] : 1; ?>' />
                                <button type="submit" class="btn btn-primary btn-sm">Filtrer</button>


                            </h5>
                        </div>
                        <div class="card-body">

                            <!-- On affiche les filtres -->
                            <?php foreach ($query_run as $filter) {


                                $checked = [];

                                if (isset($_GET['filter'])) {

                                    $checked = $_GET['filter'];
                                } ?>
                                <h6>Type de filtres</h6>
                                <hr>
                                <select class="js-example-basic-multiple" name="filter[]" multiple="multiple">

                                    <?php foreach ($query_run as $filter) {

                                        $selected = isset($_GET['brand']) && in_array($brand, $_GET['brand']) ? 'selected' : '';




                                        printf('<option name="filter[]" value="%1$s" %3$s>%2$s</option>', $filter['id'], $filter['name'], $selected);
                                    }
                                    ?>





                                </select>



                            <?php }
                            ?>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>





    <table class="table ">
        <thead>
            <tr>
                <th scope="col">Image</th>
                <th scope="col">Offre</th>

            </tr>
        </thead>
        <tbody>



            <?php
            $perpage = 10;
            $pageNow = isset($_GET["page"]) ? $_GET["page"] : 1;

            $x = ($pageNow - 1) * $perpage;
            $y = $perpage;




            // on compte le nombre d'offre
            $query = $pdo->prepare("SELECT COUNT(*) FROM offre");
            $query->execute();
            $result = $query->fetchColumn();
            $totalPage = ceil($result / $perpage) - 1;



            // on affiche les annonces selon les filtres checké
            if (isset($_GET['filter'])) {

                $filterChecked = [];
                $filterChecked = $_GET['filter'];

                foreach ($filterChecked as $filter) {

                    $query = $pdo->prepare("SELECT * FROM offre WHERE contracts_id in ($filter) OR  adress_id in ($filter) ORDER BY id limit $x, $y");
                    $query->execute();

                    foreach ($query as $row) { ?>
                        <tr>
                            <th scope="row">
                                <?php
                                $json = file_get_contents('https://some-random-api.ml/meme');
                                $obj = json_decode($json);
                                printf("<img src='$obj->image'>");
                                ?>
                            </th>


                            <td>

                                <b>Date de publication :</b> <?php echo date('d/m/Y', strtotime($row['created_at'])); ?> <br />
                                <b>Entreprise :</b> <?= $row['company']; ?> <br />
                                <b>Reference :</b> <?= $row['id']; ?><br />
                                <b> Metier :</b> <?= $row['job']; ?><br />
                                <b> Contrat :</b> <?= $row['contracts']; ?> <br />
                                <b>Ville : </b><?= $row['adress']; ?> <br />
                            </td>
                        </tr> <?php
                            }
                        }
                    }  ?>



        </tbody>
    </table>
    <nav aria-label="Page navigation example">
        <ul class="pagination">

            <!-- Pagination dynamique selon le nombre de page et l'url qui suit selon la page et le filtre -->
            <li>
                <?php for ($i = 1; $i <= $totalPage; $i++) {

                    $params['page'] = $i;
                    $active = isset($_GET['page']) && intval($_GET['page']) == $i ? ' class="active"' : '';
                    printf('<a href="?%2$s" %3$s>[ %1$d ]</a>', $i, buildQuery($params), $active);
                }
                ?>
            </li>
        </ul>
    </nav>





</body>

</html>