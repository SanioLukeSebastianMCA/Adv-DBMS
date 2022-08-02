<?php

    if(isset($_POST['edit-btn'])){
        $username= isset($_GET['username']) ? $_GET['username'] : "Not Available";
    }

    $mongo = new MongoDB\Driver\Manager("mongodb://localhost:27017");
    $filter= array();
    $options = array();
    $query = new MongoDB\Driver\Query($filter, $options);
    $res= $mongo->executeQuery('usertable.userinfo', $query);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage - Student</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap" rel="stylesheet">
    <!-- <link rel="stylesheet" href="css.css"> -->
</head>

<body>
    <center>
        <br><br>
        <h2>List and Edit Student Table</h2>
        <p>You can successfully list and edit the student table and update according to the table</p>
        <br><br>
        <table border="1" id="user-list-table">
            <thead>
                <tr>
                    <th>Full Name</th>
                    <th>Email ID</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th colspan="2">Manage</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    foreach($res as $user) {   
                        echo'
                            <tr>
                                <td>'.$user->fullname.'</td>
                                <td>'.$user->emailid.'</td>
                                <td>'.$user->username.'</td>
                                <td>'.$user->passwrd.'</td>
                                <td>
                                    <form action="ListRecord.php?username='.$user->username.'" method="POST">
                                        <input type="submit" name="edit-btn" class="user-table-edit-btn" value="Edit">                             
                                    </form>    
                                <td>
                                    <form action="ListRecord.php" method="POST">
                                        <input type="submit" name="del-btn" class="user-table-del-btn" value="Delete">                             
                                    </form>    
                                </td>
                            </tr>
                        ';
                    };
                ?>
            </tbody>
        </table>
    </center>
</body>

</html>