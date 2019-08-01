create table calling (
  device_name varchar(50) not null,
  msg_no int,
  comment varchar(100)
);

insert into calling values('Default', 0, '全職員へCall');
insert into calling values('dmyr-iPhone6s', 0, '太田');

update calling set msg_no = 1 where device_name = 'dmyr-iPhone6s';

--msg_noの取得
http://call-on-call.herokuapp.com/calling-get.php?device_name=dmyr-iPhone6s
--msg_noのクリア
http://call-on-call.herokuapp.com/calling-clear.php?device_name=dmyr-iPhone6s
--デバイス名の存在チェック
http://call-on-call.herokuapp.com/calling-check.php?device_name=dmyr-iPhone6s
