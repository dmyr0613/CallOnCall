create table calling (
  device_name varchar(50) not null,
  msg_no int,
  comment varchar(100)
);

insert into calling values('dmyr-iPhone6s', 0, 'DaisukeOta');
insert into calling values('TEST', 0, 'TEST');

update calling set msg_no = 1 where device_name = 'dmyr-iPhone6s';

create table call_message (
  msg_no int,
  message varchar(100)
);

insert into call_message values(1, 'お米といで。３合。');
insert into call_message values(2, '庭の草がぼうぼうだよ。');
insert into call_message values(3, 'お風呂掃除して。');


select * from calling a inner join call_message b
    on a.device_name = dmyr-iPhone6s
   and a.msg_no >= 1
   and a.msg_no  = b.msg_no

--デバイス名の存在チェック(なければINSERT)
http://call-on-call.herokuapp.com/calling-check.php?device_name=dmyr-iPhone6s
--msg_noの取得
http://call-on-call.herokuapp.com/calling-get.php?device_name=dmyr-iPhone6s
--msg_noを更新 デバイス指定
http://call-on-call.herokuapp.com/calling-set.php?device_name=dmyr-iPhone6s&msg_no=9
--msg_noを更新 全デバイス
http://call-on-call.herokuapp.com/calling-set.php?device_name=&msg_no=9
--msg_noのクリア
http://call-on-call.herokuapp.com/calling-clear.php?device_name=dmyr-iPhone6s
--レコード削除
http://call-on-call.herokuapp.com/calling-delete.php?device_name=test
--call_message 
http://call-on-call.herokuapp.com/calling-msg-check.php?msg_no=1&message=TEST
