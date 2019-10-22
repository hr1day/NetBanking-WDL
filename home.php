<?php
    include "header.php";
    include "navbar.php";

    if (isset($_GET['loginFailed'])) {
        $message = "Invalid Credentials ! Please try again.";
        echo "<script type='text/javascript'>alert('$message');</script>";
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home_style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("img").dblclick(function(){
                $(this).hide();
            });
        });
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
  $("h1").on({
    mouseenter: function(){
      $(this).css("background-color", "lightgray");
    },  
    mouseleave: function(){
      $(this).css("background-color", "lightblue");
    }, 
    click: function(){
      $(this).css("background-color", "yellow");
    }  
  });
});
</script>
</head>

<body>

    <div class="flex-container-background">
        <div class="flex-container">
            <div class="flex-item-0">
                <h1 id="form_header">Welcome to PS Bank.</h1>
            </div>
        </div>

        <div class="flex-container">
            <div class="flex-item-1">
                <form action="customer_login_action.php" method="post">
                    <div class="flex-item-login">
                        <h2>Welcome</h2>
                    </div>

                    <div class="flex-item">
                        <input type="text" name="cust_uname" placeholder="Enter your Username" required>
                    </div>

                    <div class="flex-item">
                        <input type="password" name="cust_psw" placeholder="Enter your Password" required>
                    </div>

                    <div class="flex-item">
                        <button type="submit">Login</button>
                    </div>
                </form>
            </div>
        </div>

    </div>

</body>
</html>

<?php include "easter_egg.php"; ?>
