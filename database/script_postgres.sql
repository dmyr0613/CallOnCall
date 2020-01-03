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
insert into call_message values(6, 'メッセージNo06：F部品が不足しました。');
insert into call_message values(7, 'メッセージNo07：G部品が不足しました。');
insert into call_message values(8, 'メッセージNo08：H部品が不足しました。');
insert into call_message values(9, 'メッセージNo09：I部品が不足しました。');
insert into call_message values(10, 'メッセージNo10：J部品が不足しました。');
insert into call_message values(11, 'メッセージNo11：K部品が不足しました。');
insert into call_message values(12, 'メッセージNo12：L部品が不足しました。');
insert into call_message values(13, 'メッセージNo13：M部品が不足しました。');
insert into call_message values(14, 'メッセージNo14：N部品が不足しました。');
insert into call_message values(15, 'メッセージNo15：O部品が不足しました。');
insert into call_message values(16, 'メッセージNo16：P部品が不足しました。');
insert into call_message values(17, 'メッセージNo17：Q部品が不足しました。');
insert into call_message values(18, 'メッセージNo18：R部品が不足しました。');
insert into call_message values(19, 'メッセージNo19：S部品が不足しました。');
insert into call_message values(20, 'メッセージNo20：T部品が不足しました。');
insert into call_message values(21, 'メッセージNo21：U部品が不足しました。');
insert into call_message values(22, 'メッセージNo22：V部品が不足しました。');
insert into call_message values(23, 'メッセージNo23：W部品が不足しました。');
insert into call_message values(24, 'メッセージNo24：X部品が不足しました。');
insert into call_message values(25, 'メッセージNo25：Y部品が不足しました。');
insert into call_message values(26, 'メッセージNo26：Z部品が不足しました。');
insert into call_message values(27, 'メッセージNo27：AA部品が不足しました。');
insert into call_message values(28, 'メッセージNo28：AB部品が不足しました。');
insert into call_message values(29, 'メッセージNo29：AC部品が不足しました。');
insert into call_message values(30, 'メッセージNo30：AD部品が不足しました。');

insert into call_message values(101, '★★★アラートNo01★★★' || chr(10) || '機器Aにてエラーが発生しました。');
insert into call_message values(102, '★★★アラートNo02★★★' || chr(10) || '機器Bにてエラーが発生しました。');
insert into call_message values(103, '★★★アラートNo03★★★' || chr(10) || '機器Cにてエラーが発生しました。');
insert into call_message values(104, '★★★アラートNo04★★★' || chr(10) || '機器Dにてエラーが発生しました。');
insert into call_message values(105, '★★★アラートNo05★★★' || chr(10) || '機器Eにてエラーが発生しました。');
insert into call_message values(106, '★★★アラートNo06★★★' || chr(10) || '機器Fにてエラーが発生しました。');
insert into call_message values(107, '★★★アラートNo07★★★' || chr(10) || '機器Gにてエラーが発生しました。');
insert into call_message values(108, '★★★アラートNo08★★★' || chr(10) || '機器Hにてエラーが発生しました。');
insert into call_message values(109, '★★★アラートNo09★★★' || chr(10) || '機器Iにてエラーが発生しました。');
insert into call_message values(110, '★★★アラートNo10★★★' || chr(10) || '機器Jにてエラーが発生しました。');
insert into call_message values(111, '★★★アラートNo11★★★' || chr(10) || '機器Kにてエラーが発生しました。');
insert into call_message values(112, '★★★アラートNo12★★★' || chr(10) || '機器Lにてエラーが発生しました。');
insert into call_message values(113, '★★★アラートNo13★★★' || chr(10) || '機器Mにてエラーが発生しました。');
insert into call_message values(114, '★★★アラートNo14★★★' || chr(10) || '機器Nにてエラーが発生しました。');
insert into call_message values(115, '★★★アラートNo15★★★' || chr(10) || '機器Oにてエラーが発生しました。');
insert into call_message values(116, '★★★アラートNo16★★★' || chr(10) || '機器Pにてエラーが発生しました。');
insert into call_message values(117, '★★★アラートNo17★★★' || chr(10) || '機器Qにてエラーが発生しました。');
insert into call_message values(118, '★★★アラートNo18★★★' || chr(10) || '機器Rにてエラーが発生しました。');
insert into call_message values(119, '★★★アラートNo19★★★' || chr(10) || '機器Sにてエラーが発生しました。');
insert into call_message values(120, '★★★アラートNo20★★★' || chr(10) || '機器Tにてエラーが発生しました。');
insert into call_message values(121, '★★★アラートNo21★★★' || chr(10) || '機器Uにてエラーが発生しました。');
insert into call_message values(122, '★★★アラートNo22★★★' || chr(10) || '機器Vにてエラーが発生しました。');
insert into call_message values(123, '★★★アラートNo23★★★' || chr(10) || '機器Wにてエラーが発生しました。');
insert into call_message values(124, '★★★アラートNo24★★★' || chr(10) || '機器Xにてエラーが発生しました。');
insert into call_message values(125, '★★★アラートNo25★★★' || chr(10) || '機器Yにてエラーが発生しました。');
insert into call_message values(126, '★★★アラートNo26★★★' || chr(10) || '機器Zにてエラーが発生しました。');
insert into call_message values(127, '★★★アラートNo27★★★' || chr(10) || '機器AAにてエラーが発生しました。');
insert into call_message values(128, '★★★アラートNo28★★★' || chr(10) || '機器ABにてエラーが発生しました。');
insert into call_message values(129, '★★★アラートNo29★★★' || chr(10) || '機器ACにてエラーが発生しました。');
insert into call_message values(130, '★★★アラートNo30★★★' || chr(10) || '機器ADにてエラーが発生しました。');

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
