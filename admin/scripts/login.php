<?php 

function login($username, $password, $ip){
    $pdo = Database::getInstance()->getConnection();
    //Check existance
    $check_exist_query = 'SELECT COUNT(*) FROM tbl_user WHERE user_name= :username';
    $user_set = $pdo->prepare($check_exist_query);
    $user_set->execute(
        array(
            ':username' => $username,
        )
    );

    if($user_set->fetchColumn()>0){
        //Log user in
        $get_user_query = 'SELECT * FROM tbl_user WHERE user_name = :username';
        $get_user_query .= ' AND user_pass = :password';
        $user_check = $pdo->prepare($get_user_query);
        $user_check->execute(
            array(
                ':username'=>$username,
                ':password'=>$password
            )
        );

        if($found_user = $user_check->fetch(PDO::FETCH_ASSOC)){


            $user = array();

            $user['id'] = $found_user['user_id'];
            $user['admin'] = $found_user['user_admin'];
            $user['avatar'] = $found_user['user_avatar'];
            $user['permissions'] = $found_user['user_permissions'];
            $user['username'] = $found_user['user_name'];
            $user['admin'] = $found_user['user_admin'];


            return json_encode($user);
        }else{
            $message = 'Incorrect password';
            return json_encode($message);
        }

    } else {
        //User does not exist
        $message = 'User does not exist';
        return json_encode($message);
    }    
}
