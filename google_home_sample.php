<?php
header('Content-type: application/json');
// jsonの受け取り
$update_response = file_get_contents("php://input");
$update          = json_decode($update_response, true);
// ここのgetDateがIntentのAction and parametersと対応している
if($update["queryResult"]["action"] == "getDate"){
  if (isset($update["queryResult"]["parameters"]["month"])) {
    $month      = intval($update["queryResult"]["parameters"]["month"]);
    $year       = intval($update["queryResult"]["parameters"]["year"]);
    $speech_txt = $year . "年" . $month . "月って言いましたか？";
  } else {
    $speech_txt = "分かりませんでした。もう一度、年月を言い直してください。切断する場合は終了と言ってください。";
  }
  processMessage($update,$speech_txt);
}

//番号が発言されたらCallOnCallのWebAPIを実行する。
if($update["queryResult"]["action"] == "getMsgNo"){
  if (isset($update["queryResult"]["parameters"]["msgNo"])) {
    $msg_no      = intval($update["queryResult"]["parameters"]["msgNo"]);
    $speech_txt = $msg_no . "番を送信しました。";

    //meg_noの指定がある場合は、webAPIにて、メッセージNoを更新する。
    // $url = "http://call-on-call.herokuapp.com/calling-set.php?device_name=dmyr-iPhone6s&msg_no=" . $msg_no;
    $url = "http://call-on-call.herokuapp.com/calling-set.php?device_name=&msg_no=" . $msg_no;
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);

    $response = curl_exec($ch);
    curl_close($ch);
    error_log(print_r($response, true));

  } else {
    $speech_txt = "分かりませんでした。もう一度、番号を言い直してください。";
  }
  processMessage($update,$speech_txt);
}

// default Welcome Intent用（blog参照）
if($update["queryResult"]["action"] == "getWelcome"){
  $speech_txt   = "必要に応じて番号を発言してください。";
  processMessage($update,$speech_txt);
}
// 返信用Json
function processMessage($update,$speech_txt) {
    echo json_encode(array(
        "fulfillmentText" => $speech_txt,
        "contextOut" => array()
    ));
}
?>
