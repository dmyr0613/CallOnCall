<?php
header('Content-type: application/json');
// jsonの受け取り
$update_response = file_get_contents("php://input");
$update          = json_decode($update_response, true);
// ここのgetDateがIntentのAction and parametersと対応している
if($update["result"]["action"] == "getDate"){
  if (isset($update["result"]["parameters"]["month"])) {
    $month      = intval($update["result"]["parameters"]["month"]);
    $year       = intval($update["result"]["parameters"]["year"]);
    $speech_txt = $year . "年" . $month . "月って言いましたか？";
  } else {
    $speech_txt = "分かりませんでした。もう一度、年月を言い直してください。切断する場合は終了と言ってください。";
  }
  processMessage($update,$speech_txt);
}
// default Welcome Intent用（blog参照）
if($update["result"]["action"] == "getWelcome"){
  $speech_txt   = "いらっしゃいませ";
  processMessage($update,$speech_txt);
}
// 返信用Json
function processMessage($update,$speech_txt) {
    echo json_encode(array(
        "source" => $update["result"]["source"],
        "speech" => $speech_txt,
        "displayText" => $speech_txt,
        "contextOut" => array()
    ));
}
?>
