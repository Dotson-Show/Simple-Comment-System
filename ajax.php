<?php 
    include("scs_connect.php");

    # Receiving data from ajax
    if (isset($_POST['name'])) {
        $name = $conn->real_escape_string($_POST['name']);
        $content = $conn->real_escape_string($_POST['content']);
        $date = $_POST['date'];

            # Insert into DB
        $insert = $conn->query("INSERT INTO `comments` (`id` ,`name` ,`content` ,`date`) VALUES (NULL , '{$name}', '{$content}', '$date');");
        
        exit();
    }  

    // get the first letter of names in Uppercase
    function getLetter($name){
        $uName = strtoupper($name);
        echo "<div class='pic-cont'>
                <div class='user-pic'>$uName[0]</div>
              </div>";
    }

    // retrieve from DB
    if(isset($_POST['display'])){
    
        $sql = "SELECT * FROM `comments` ORDER BY 1 DESC";
        $result = $conn->query($sql);

        while ($row = $result->fetch_assoc()){

            if ($row['name'] === Admin123){
                echo "  
                        ".getLetter('Admin')."

                        <div class='detl-cont'>
                            <div class='userName'>Admin</div>
                            <div class='commentDate'>".$row['date']."</div>
                            <p class='adminMessage'>".$row['content']."</p>
                        </div>";
            }else{
                echo "  
                            ".getLetter($row['name'])."
                        
                        <div class='detl-cont'>
                            <div class='userName'> ".$row['name']."</div>
                            <div class='commentDate'>".$row['date']."</div>
                            <p class='commentMessage'>".$row['content']."</p>
                        </div>";
            }

            
            
        }
        exit();
    }
?>

