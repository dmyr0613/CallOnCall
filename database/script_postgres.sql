create table calling (
  device_name varchar(50) not null,
  msg_no int,
  comment varchar(100),
  token varchar(500)
);

insert into calling values('dmyr-iPhone6s', 0, 'DaisukeOta', '851fd0ba8b728b47d765f2d2bc90140474d5bb0c945606734c5e07d8dd40abc0');
insert into calling values('dmyr-iPhone-SE', 0, 'MEGU', '9c2513bb13c47947aaeb3ba21d6bd46b35e077ac21f11e67e2448f9e5aca38f6');
insert into calling values('Maulana', 0, 'ArifMaulana', '7d417d3a7dc8a188f2d73708037b43db6f1f637b338d46fc72f302432e0f6b28');

insert into calling values('TEST', 0, 'TEST', '12345');
insert into calling values('generic_x86', 3, 'generic_x86', '12345');


update calling set msg_no = 1 where device_name = 'dmyr-iPhone6s';

create table call_message (
  msg_no int,
  message varchar(100)
);

--メッセージ
insert into call_message values(1, 'メッセージNo01：A部品が不足しました。');
insert into call_message values(2, 'メッセージNo02：B部品が不足しました。');
insert into call_message values(3, 'メッセージNo03：C部品が不足しました。');
insert into call_message values(4, 'メッセージNo04：D部品が不足しました。');
insert into call_message values(5, 'メッセージNo05：E部品が不足しました。');
insert into call_message values(101, 'アラートNo01：機器Aにてエラーが発生しました。');
insert into call_message values(102, 'アラートNo02：機器Bにてエラーが発生しました。');
insert into call_message values(103, 'アラートNo03：機器Cにてエラーが発生しました。');
insert into call_message values(104, 'アラートNo04：機器Dにてエラーが発生しました。');
insert into call_message values(105, 'アラートNo05：機器Eにてエラーが発生しました。');

update call_message set message = '★★★アラートNo01★★★' || chr(10) || '機器Aにてエラーが発生しました。' where msg_no = 101;
update call_message set message = '★★★アラートNo02★★★' || chr(10) || '機器Bにてエラーが発生しました。' where msg_no = 102;
update call_message set message = '★★★アラートNo03★★★' || chr(10) || '機器Cにてエラーが発生しました。' where msg_no = 103;
update call_message set message = '★★★アラートNo04★★★' || chr(10) || '機器Dにてエラーが発生しました。' where msg_no = 104;
update call_message set message = '★★★アラートNo05★★★' || chr(10) || '機器Eにてエラーが発生しました。' where msg_no = 105;

--LOGテーブル
create table calling_log (
  insert_datetime timestamp,
  update_datetime timestamp,
  device_name varchar(50) not null,
  msg_no int,
  kakunin_flg int
);


select * from calling a inner join call_message b
    on a.device_name = dmyr-iPhone6s
   and a.msg_no >= 1
   and a.msg_no  = b.msg_no

--デバイス名の存在チェック(なければINSERT)
http://calloncall.herokuapp.com/calling-check.php?device_name=dmyr-iPhone6s
--デバイス名の存在チェック2(なければINSERT。Tokenが異なればUPDATE)
http://calloncall.herokuapp.com/calling-check2.php?device_name=dmyr-iPhone6s&token=851fd0ba8b728b47d765f2d2bc90140474d5bb0c945606734c5e07d8dd40abc0
http://calloncall.herokuapp.com/calling-check2.php?device_name=generic_x86&token=cy9m7eDXFjo:APA91bHnGBIi1Zv6VlsRn1u2LF4a0OMzhIbfnnfZe1s49durSSLuasOj8cBQLWUcl9voza_Lviy3WTy-D6njbu-wJOPzbMo_uYWp7OKtXTJBO8SsagZCP8O5goY4Oxamqzsy5aCZIjOe
--msg_noの取得
http://calloncall.herokuapp.com/calling-get.php?device_name=dmyr-iPhone6s
--msg_noを更新 デバイス指定
http://calloncall.herokuapp.com/calling-set.php?device_name=dmyr-iPhone6s&msg_no=9
http://calloncall.herokuapp.com/calling-set.php?device_name=acer_T02&msg_no=1
--msg_noを更新 全デバイス
http://calloncall.herokuapp.com/calling-set.php?device_name=&msg_no=9
--msg_noのクリア
http://calloncall.herokuapp.com/calling-clear.php?device_name=dmyr-iPhone6s
http://calloncall.herokuapp.com/calling-clear.php?device_name=acer_T02
--レコード削除
http://calloncall.herokuapp.com/calling-delete.php?device_name=test
--call_message
http://calloncall.herokuapp.com/calling-msg-check.php?msg_no=1&message=TEST

--プッシュ通知
http://calloncall.herokuapp.com/push_calling.php?token=851fd0ba8b728b47d765f2d2bc90140474d5bb0c945606734c5e07d8dd40abc0&msg_no=1&message=TEST
--プッシュ通知ALL
http://calloncall.herokuapp.com/calling-push-all.php
