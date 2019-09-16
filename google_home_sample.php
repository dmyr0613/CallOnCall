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
// default Welcome Intent用（blog参照）
if($update["queryResult"]["action"] == "getWelcome"){
  $speech_txt   = "いらっしゃいませ";
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
