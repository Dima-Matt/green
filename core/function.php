<?php

function renderTemplate($name, $data = []){

    $result = '';
    $name = $_SERVER['DOCUMENT_ROOT'] . '/templates/' . $name . '.php';
    
    if(!file_exists($name)){
        return $result;
    } 

    ob_start();
    extract($data);
    require_once $name;
    $result = ob_get_clean();

    return $result;
}


function pr($arr){
    echo '<pre>';
    print_r($arr);
    echo '</pre>';
}


//функция добавления параметра адресной строки

function setPageParam($param, $value){

$qParam = $_SERVER['QUERY_STRING'];
parse_str($qParam, $arr);

if(!empty($param) && !empty($value)){
    if(array_key_exists($param, $arr)){
        $arr[$param] = $value;
    } else{
        $arr[$param] = $value;
    }
}
    return http_build_query($arr);
}



function getStmtResult($link, $query, $param = []){  //подготовленный запрос

    if(!empty($param)){
        $stmt = mysqli_prepare($link, $query);  // подготовка запроса

        $type = '';  // готовим строку с типом данных param
        foreach ($param as $item) {
            if(is_int($item)){
                $type .= 'i';
            }elseif (is_string($item)){
                $type .= 's';
            }elseif(is_double($item)){
                $type .= 'w';
            }else {
                $type .= 's';
            }
        }
        $values = array_merge([$stmt, $type], $param); //слияние массивов

        $func = 'mysqli_stmt_bind_param';
        //mysqli_stmt_bind_param($stmt, $type, $param[0], $param[1], $param[2]);
        $func(...$values);  //... - разное изменяемое число переменных
;
        mysqli_stmt_execute($stmt);  // выполняет запрос

        $result = mysqli_stmt_get_result($stmt);

        return $result;
    }else{
        $result = mysqli_query($link, $query);
        return $result;
    }
}
