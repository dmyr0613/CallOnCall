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
insert into call_message values(131, '★★★アラートNo31★★★' || chr(10) || 'No31エラーが発生しました。');
insert into call_message values(132, '★★★アラートNo32★★★' || chr(10) || 'No32エラーが発生しました。');
insert into call_message values(133, '★★★アラートNo33★★★' || chr(10) || 'No33エラーが発生しました。');
insert into call_message values(134, '★★★アラートNo34★★★' || chr(10) || 'No34エラーが発生しました。');
insert into call_message values(135, '★★★アラートNo35★★★' || chr(10) || 'No35エラーが発生しました。');
insert into call_message values(136, '★★★アラートNo36★★★' || chr(10) || 'No36エラーが発生しました。');
insert into call_message values(137, '★★★アラートNo37★★★' || chr(10) || 'No37エラーが発生しました。');
insert into call_message values(138, '★★★アラートNo38★★★' || chr(10) || 'No38エラーが発生しました。');
insert into call_message values(139, '★★★アラートNo39★★★' || chr(10) || 'No39エラーが発生しました。');
insert into call_message values(140, '★★★アラートNo40★★★' || chr(10) || 'No40エラーが発生しました。');
insert into call_message values(141, '★★★アラートNo41★★★' || chr(10) || 'No41エラーが発生しました。');
insert into call_message values(142, '★★★アラートNo42★★★' || chr(10) || 'No42エラーが発生しました。');
insert into call_message values(143, '★★★アラートNo43★★★' || chr(10) || 'No43エラーが発生しました。');
insert into call_message values(144, '★★★アラートNo44★★★' || chr(10) || 'No44エラーが発生しました。');
insert into call_message values(145, '★★★アラートNo45★★★' || chr(10) || 'No45エラーが発生しました。');
insert into call_message values(146, '★★★アラートNo46★★★' || chr(10) || 'No46エラーが発生しました。');
insert into call_message values(147, '★★★アラートNo47★★★' || chr(10) || 'No47エラーが発生しました。');
insert into call_message values(148, '★★★アラートNo48★★★' || chr(10) || 'No48エラーが発生しました。');
insert into call_message values(149, '★★★アラートNo49★★★' || chr(10) || 'No49エラーが発生しました。');
insert into call_message values(150, '★★★アラートNo50★★★' || chr(10) || 'No50エラーが発生しました。');
insert into call_message values(151, '★★★アラートNo51★★★' || chr(10) || 'No51エラーが発生しました。');
insert into call_message values(152, '★★★アラートNo52★★★' || chr(10) || 'No52エラーが発生しました。');
insert into call_message values(153, '★★★アラートNo53★★★' || chr(10) || 'No53エラーが発生しました。');
insert into call_message values(154, '★★★アラートNo54★★★' || chr(10) || 'No54エラーが発生しました。');
insert into call_message values(155, '★★★アラートNo55★★★' || chr(10) || 'No55エラーが発生しました。');
insert into call_message values(156, '★★★アラートNo56★★★' || chr(10) || 'No56エラーが発生しました。');
insert into call_message values(157, '★★★アラートNo57★★★' || chr(10) || 'No57エラーが発生しました。');
insert into call_message values(158, '★★★アラートNo58★★★' || chr(10) || 'No58エラーが発生しました。');
insert into call_message values(159, '★★★アラートNo59★★★' || chr(10) || 'No59エラーが発生しました。');
insert into call_message values(160, '★★★アラートNo60★★★' || chr(10) || 'No60エラーが発生しました。');
insert into call_message values(161, '★★★アラートNo61★★★' || chr(10) || 'No61エラーが発生しました。');
insert into call_message values(162, '★★★アラートNo62★★★' || chr(10) || 'No62エラーが発生しました。');
insert into call_message values(163, '★★★アラートNo63★★★' || chr(10) || 'No63エラーが発生しました。');
insert into call_message values(164, '★★★アラートNo64★★★' || chr(10) || 'No64エラーが発生しました。');
insert into call_message values(165, '★★★アラートNo65★★★' || chr(10) || 'No65エラーが発生しました。');
insert into call_message values(166, '★★★アラートNo66★★★' || chr(10) || 'No66エラーが発生しました。');
insert into call_message values(167, '★★★アラートNo67★★★' || chr(10) || 'No67エラーが発生しました。');
insert into call_message values(168, '★★★アラートNo68★★★' || chr(10) || 'No68エラーが発生しました。');
insert into call_message values(169, '★★★アラートNo69★★★' || chr(10) || 'No69エラーが発生しました。');
insert into call_message values(170, '★★★アラートNo70★★★' || chr(10) || 'No70エラーが発生しました。');
insert into call_message values(171, '★★★アラートNo71★★★' || chr(10) || 'No71エラーが発生しました。');
insert into call_message values(172, '★★★アラートNo72★★★' || chr(10) || 'No72エラーが発生しました。');
insert into call_message values(173, '★★★アラートNo73★★★' || chr(10) || 'No73エラーが発生しました。');
insert into call_message values(174, '★★★アラートNo74★★★' || chr(10) || 'No74エラーが発生しました。');
insert into call_message values(175, '★★★アラートNo75★★★' || chr(10) || 'No75エラーが発生しました。');
insert into call_message values(176, '★★★アラートNo76★★★' || chr(10) || 'No76エラーが発生しました。');
insert into call_message values(177, '★★★アラートNo77★★★' || chr(10) || 'No77エラーが発生しました。');
insert into call_message values(178, '★★★アラートNo78★★★' || chr(10) || 'No78エラーが発生しました。');
insert into call_message values(179, '★★★アラートNo79★★★' || chr(10) || 'No79エラーが発生しました。');
insert into call_message values(180, '★★★アラートNo80★★★' || chr(10) || 'No80エラーが発生しました。');
insert into call_message values(181, '★★★アラートNo81★★★' || chr(10) || 'No81エラーが発生しました。');
insert into call_message values(182, '★★★アラートNo82★★★' || chr(10) || 'No82エラーが発生しました。');
insert into call_message values(183, '★★★アラートNo83★★★' || chr(10) || 'No83エラーが発生しました。');
insert into call_message values(184, '★★★アラートNo84★★★' || chr(10) || 'No84エラーが発生しました。');
insert into call_message values(185, '★★★アラートNo85★★★' || chr(10) || 'No85エラーが発生しました。');
insert into call_message values(186, '★★★アラートNo86★★★' || chr(10) || 'No86エラーが発生しました。');
insert into call_message values(187, '★★★アラートNo87★★★' || chr(10) || 'No87エラーが発生しました。');
insert into call_message values(188, '★★★アラートNo88★★★' || chr(10) || 'No88エラーが発生しました。');
insert into call_message values(189, '★★★アラートNo89★★★' || chr(10) || 'No89エラーが発生しました。');
insert into call_message values(190, '★★★アラートNo90★★★' || chr(10) || 'No90エラーが発生しました。');
insert into call_message values(191, '★★★アラートNo91★★★' || chr(10) || 'No91エラーが発生しました。');
insert into call_message values(192, '★★★アラートNo92★★★' || chr(10) || 'No92エラーが発生しました。');
insert into call_message values(193, '★★★アラートNo93★★★' || chr(10) || 'No93エラーが発生しました。');
insert into call_message values(194, '★★★アラートNo94★★★' || chr(10) || 'No94エラーが発生しました。');
insert into call_message values(195, '★★★アラートNo95★★★' || chr(10) || 'No95エラーが発生しました。');
insert into call_message values(196, '★★★アラートNo96★★★' || chr(10) || 'No96エラーが発生しました。');
insert into call_message values(197, '★★★アラートNo97★★★' || chr(10) || 'No97エラーが発生しました。');
insert into call_message values(198, '★★★アラートNo98★★★' || chr(10) || 'No98エラーが発生しました。');
insert into call_message values(199, '★★★アラートNo99★★★' || chr(10) || 'No99エラーが発生しました。');
insert into call_message values(200, '★★★アラートNo100★★★' || chr(10) || 'No100エラーが発生しました。');
insert into call_message values(201, '★★★アラートNo101★★★' || chr(10) || 'No101エラーが発生しました。');
insert into call_message values(202, '★★★アラートNo102★★★' || chr(10) || 'No102エラーが発生しました。');
insert into call_message values(203, '★★★アラートNo103★★★' || chr(10) || 'No103エラーが発生しました。');
insert into call_message values(204, '★★★アラートNo104★★★' || chr(10) || 'No104エラーが発生しました。');
insert into call_message values(205, '★★★アラートNo105★★★' || chr(10) || 'No105エラーが発生しました。');
insert into call_message values(206, '★★★アラートNo106★★★' || chr(10) || 'No106エラーが発生しました。');
insert into call_message values(207, '★★★アラートNo107★★★' || chr(10) || 'No107エラーが発生しました。');
insert into call_message values(208, '★★★アラートNo108★★★' || chr(10) || 'No108エラーが発生しました。');
insert into call_message values(209, '★★★アラートNo109★★★' || chr(10) || 'No109エラーが発生しました。');
insert into call_message values(210, '★★★アラートNo110★★★' || chr(10) || 'No110エラーが発生しました。');
insert into call_message values(211, '★★★アラートNo111★★★' || chr(10) || 'No111エラーが発生しました。');
insert into call_message values(212, '★★★アラートNo112★★★' || chr(10) || 'No112エラーが発生しました。');
insert into call_message values(213, '★★★アラートNo113★★★' || chr(10) || 'No113エラーが発生しました。');
insert into call_message values(214, '★★★アラートNo114★★★' || chr(10) || 'No114エラーが発生しました。');
insert into call_message values(215, '★★★アラートNo115★★★' || chr(10) || 'No115エラーが発生しました。');
insert into call_message values(216, '★★★アラートNo116★★★' || chr(10) || 'No116エラーが発生しました。');
insert into call_message values(217, '★★★アラートNo117★★★' || chr(10) || 'No117エラーが発生しました。');
insert into call_message values(218, '★★★アラートNo118★★★' || chr(10) || 'No118エラーが発生しました。');
insert into call_message values(219, '★★★アラートNo119★★★' || chr(10) || 'No119エラーが発生しました。');
insert into call_message values(220, '★★★アラートNo120★★★' || chr(10) || 'No120エラーが発生しました。');
insert into call_message values(221, '★★★アラートNo121★★★' || chr(10) || 'No121エラーが発生しました。');
insert into call_message values(222, '★★★アラートNo122★★★' || chr(10) || 'No122エラーが発生しました。');
insert into call_message values(223, '★★★アラートNo123★★★' || chr(10) || 'No123エラーが発生しました。');
insert into call_message values(224, '★★★アラートNo124★★★' || chr(10) || 'No124エラーが発生しました。');
insert into call_message values(225, '★★★アラートNo125★★★' || chr(10) || 'No125エラーが発生しました。');
insert into call_message values(226, '★★★アラートNo126★★★' || chr(10) || 'No126エラーが発生しました。');
insert into call_message values(227, '★★★アラートNo127★★★' || chr(10) || 'No127エラーが発生しました。');
insert into call_message values(228, '★★★アラートNo128★★★' || chr(10) || 'No128エラーが発生しました。');
insert into call_message values(229, '★★★アラートNo129★★★' || chr(10) || 'No129エラーが発生しました。');
insert into call_message values(230, '★★★アラートNo130★★★' || chr(10) || 'No130エラーが発生しました。');
insert into call_message values(231, '★★★アラートNo131★★★' || chr(10) || 'No131エラーが発生しました。');
insert into call_message values(232, '★★★アラートNo132★★★' || chr(10) || 'No132エラーが発生しました。');
insert into call_message values(233, '★★★アラートNo133★★★' || chr(10) || 'No133エラーが発生しました。');
insert into call_message values(234, '★★★アラートNo134★★★' || chr(10) || 'No134エラーが発生しました。');
insert into call_message values(235, '★★★アラートNo135★★★' || chr(10) || 'No135エラーが発生しました。');
insert into call_message values(236, '★★★アラートNo136★★★' || chr(10) || 'No136エラーが発生しました。');
insert into call_message values(237, '★★★アラートNo137★★★' || chr(10) || 'No137エラーが発生しました。');
insert into call_message values(238, '★★★アラートNo138★★★' || chr(10) || 'No138エラーが発生しました。');
insert into call_message values(239, '★★★アラートNo139★★★' || chr(10) || 'No139エラーが発生しました。');
insert into call_message values(240, '★★★アラートNo140★★★' || chr(10) || 'No140エラーが発生しました。');
insert into call_message values(241, '★★★アラートNo141★★★' || chr(10) || 'No141エラーが発生しました。');
insert into call_message values(242, '★★★アラートNo142★★★' || chr(10) || 'No142エラーが発生しました。');
insert into call_message values(243, '★★★アラートNo143★★★' || chr(10) || 'No143エラーが発生しました。');
insert into call_message values(244, '★★★アラートNo144★★★' || chr(10) || 'No144エラーが発生しました。');
insert into call_message values(245, '★★★アラートNo145★★★' || chr(10) || 'No145エラーが発生しました。');
insert into call_message values(246, '★★★アラートNo146★★★' || chr(10) || 'No146エラーが発生しました。');
insert into call_message values(247, '★★★アラートNo147★★★' || chr(10) || 'No147エラーが発生しました。');
insert into call_message values(248, '★★★アラートNo148★★★' || chr(10) || 'No148エラーが発生しました。');
insert into call_message values(249, '★★★アラートNo149★★★' || chr(10) || 'No149エラーが発生しました。');
insert into call_message values(250, '★★★アラートNo150★★★' || chr(10) || 'No150エラーが発生しました。');
insert into call_message values(251, '★★★アラートNo151★★★' || chr(10) || 'No151エラーが発生しました。');
insert into call_message values(252, '★★★アラートNo152★★★' || chr(10) || 'No152エラーが発生しました。');
insert into call_message values(253, '★★★アラートNo153★★★' || chr(10) || 'No153エラーが発生しました。');
insert into call_message values(254, '★★★アラートNo154★★★' || chr(10) || 'No154エラーが発生しました。');
insert into call_message values(255, '★★★アラートNo155★★★' || chr(10) || 'No155エラーが発生しました。');
insert into call_message values(256, '★★★アラートNo156★★★' || chr(10) || 'No156エラーが発生しました。');
insert into call_message values(257, '★★★アラートNo157★★★' || chr(10) || 'No157エラーが発生しました。');
insert into call_message values(258, '★★★アラートNo158★★★' || chr(10) || 'No158エラーが発生しました。');
insert into call_message values(259, '★★★アラートNo159★★★' || chr(10) || 'No159エラーが発生しました。');
insert into call_message values(260, '★★★アラートNo160★★★' || chr(10) || 'No160エラーが発生しました。');
insert into call_message values(261, '★★★アラートNo161★★★' || chr(10) || 'No161エラーが発生しました。');
insert into call_message values(262, '★★★アラートNo162★★★' || chr(10) || 'No162エラーが発生しました。');
insert into call_message values(263, '★★★アラートNo163★★★' || chr(10) || 'No163エラーが発生しました。');
insert into call_message values(264, '★★★アラートNo164★★★' || chr(10) || 'No164エラーが発生しました。');
insert into call_message values(265, '★★★アラートNo165★★★' || chr(10) || 'No165エラーが発生しました。');
insert into call_message values(266, '★★★アラートNo166★★★' || chr(10) || 'No166エラーが発生しました。');
insert into call_message values(267, '★★★アラートNo167★★★' || chr(10) || 'No167エラーが発生しました。');
insert into call_message values(268, '★★★アラートNo168★★★' || chr(10) || 'No168エラーが発生しました。');
insert into call_message values(269, '★★★アラートNo169★★★' || chr(10) || 'No169エラーが発生しました。');
insert into call_message values(270, '★★★アラートNo170★★★' || chr(10) || 'No170エラーが発生しました。');
insert into call_message values(271, '★★★アラートNo171★★★' || chr(10) || 'No171エラーが発生しました。');
insert into call_message values(272, '★★★アラートNo172★★★' || chr(10) || 'No172エラーが発生しました。');
insert into call_message values(273, '★★★アラートNo173★★★' || chr(10) || 'No173エラーが発生しました。');
insert into call_message values(274, '★★★アラートNo174★★★' || chr(10) || 'No174エラーが発生しました。');
insert into call_message values(275, '★★★アラートNo175★★★' || chr(10) || 'No175エラーが発生しました。');
insert into call_message values(276, '★★★アラートNo176★★★' || chr(10) || 'No176エラーが発生しました。');
insert into call_message values(277, '★★★アラートNo177★★★' || chr(10) || 'No177エラーが発生しました。');
insert into call_message values(278, '★★★アラートNo178★★★' || chr(10) || 'No178エラーが発生しました。');
insert into call_message values(279, '★★★アラートNo179★★★' || chr(10) || 'No179エラーが発生しました。');
insert into call_message values(280, '★★★アラートNo180★★★' || chr(10) || 'No180エラーが発生しました。');
insert into call_message values(281, '★★★アラートNo181★★★' || chr(10) || 'No181エラーが発生しました。');
insert into call_message values(282, '★★★アラートNo182★★★' || chr(10) || 'No182エラーが発生しました。');
insert into call_message values(283, '★★★アラートNo183★★★' || chr(10) || 'No183エラーが発生しました。');
insert into call_message values(284, '★★★アラートNo184★★★' || chr(10) || 'No184エラーが発生しました。');
insert into call_message values(285, '★★★アラートNo185★★★' || chr(10) || 'No185エラーが発生しました。');
insert into call_message values(286, '★★★アラートNo186★★★' || chr(10) || 'No186エラーが発生しました。');
insert into call_message values(287, '★★★アラートNo187★★★' || chr(10) || 'No187エラーが発生しました。');
insert into call_message values(288, '★★★アラートNo188★★★' || chr(10) || 'No188エラーが発生しました。');
insert into call_message values(289, '★★★アラートNo189★★★' || chr(10) || 'No189エラーが発生しました。');
insert into call_message values(290, '★★★アラートNo190★★★' || chr(10) || 'No190エラーが発生しました。');
insert into call_message values(291, '★★★アラートNo191★★★' || chr(10) || 'No191エラーが発生しました。');
insert into call_message values(292, '★★★アラートNo192★★★' || chr(10) || 'No192エラーが発生しました。');
insert into call_message values(293, '★★★アラートNo193★★★' || chr(10) || 'No193エラーが発生しました。');
insert into call_message values(294, '★★★アラートNo194★★★' || chr(10) || 'No194エラーが発生しました。');
insert into call_message values(295, '★★★アラートNo195★★★' || chr(10) || 'No195エラーが発生しました。');
insert into call_message values(296, '★★★アラートNo196★★★' || chr(10) || 'No196エラーが発生しました。');
insert into call_message values(297, '★★★アラートNo197★★★' || chr(10) || 'No197エラーが発生しました。');
insert into call_message values(298, '★★★アラートNo198★★★' || chr(10) || 'No198エラーが発生しました。');
insert into call_message values(299, '★★★アラートNo199★★★' || chr(10) || 'No199エラーが発生しました。');
insert into call_message values(300, '★★★アラートNo200★★★' || chr(10) || 'No200エラーが発生しました。');
insert into call_message values(301, '★★★アラートNo201★★★' || chr(10) || 'No201エラーが発生しました。');
insert into call_message values(302, '★★★アラートNo202★★★' || chr(10) || 'No202エラーが発生しました。');
insert into call_message values(303, '★★★アラートNo203★★★' || chr(10) || 'No203エラーが発生しました。');
insert into call_message values(304, '★★★アラートNo204★★★' || chr(10) || 'No204エラーが発生しました。');
insert into call_message values(305, '★★★アラートNo205★★★' || chr(10) || 'No205エラーが発生しました。');
insert into call_message values(306, '★★★アラートNo206★★★' || chr(10) || 'No206エラーが発生しました。');
insert into call_message values(307, '★★★アラートNo207★★★' || chr(10) || 'No207エラーが発生しました。');
insert into call_message values(308, '★★★アラートNo208★★★' || chr(10) || 'No208エラーが発生しました。');
insert into call_message values(309, '★★★アラートNo209★★★' || chr(10) || 'No209エラーが発生しました。');
insert into call_message values(310, '★★★アラートNo210★★★' || chr(10) || 'No210エラーが発生しました。');
insert into call_message values(311, '★★★アラートNo211★★★' || chr(10) || 'No211エラーが発生しました。');
insert into call_message values(312, '★★★アラートNo212★★★' || chr(10) || 'No212エラーが発生しました。');
insert into call_message values(313, '★★★アラートNo213★★★' || chr(10) || 'No213エラーが発生しました。');
insert into call_message values(314, '★★★アラートNo214★★★' || chr(10) || 'No214エラーが発生しました。');
insert into call_message values(315, '★★★アラートNo215★★★' || chr(10) || 'No215エラーが発生しました。');
insert into call_message values(316, '★★★アラートNo216★★★' || chr(10) || 'No216エラーが発生しました。');
insert into call_message values(317, '★★★アラートNo217★★★' || chr(10) || 'No217エラーが発生しました。');
insert into call_message values(318, '★★★アラートNo218★★★' || chr(10) || 'No218エラーが発生しました。');
insert into call_message values(319, '★★★アラートNo219★★★' || chr(10) || 'No219エラーが発生しました。');
insert into call_message values(320, '★★★アラートNo220★★★' || chr(10) || 'No220エラーが発生しました。');
insert into call_message values(321, '★★★アラートNo221★★★' || chr(10) || 'No221エラーが発生しました。');
insert into call_message values(322, '★★★アラートNo222★★★' || chr(10) || 'No222エラーが発生しました。');
insert into call_message values(323, '★★★アラートNo223★★★' || chr(10) || 'No223エラーが発生しました。');
insert into call_message values(324, '★★★アラートNo224★★★' || chr(10) || 'No224エラーが発生しました。');
insert into call_message values(325, '★★★アラートNo225★★★' || chr(10) || 'No225エラーが発生しました。');
insert into call_message values(326, '★★★アラートNo226★★★' || chr(10) || 'No226エラーが発生しました。');
insert into call_message values(327, '★★★アラートNo227★★★' || chr(10) || 'No227エラーが発生しました。');
insert into call_message values(328, '★★★アラートNo228★★★' || chr(10) || 'No228エラーが発生しました。');
insert into call_message values(329, '★★★アラートNo229★★★' || chr(10) || 'No229エラーが発生しました。');
insert into call_message values(330, '★★★アラートNo230★★★' || chr(10) || 'No230エラーが発生しました。');
insert into call_message values(331, '★★★アラートNo231★★★' || chr(10) || 'No231エラーが発生しました。');
insert into call_message values(332, '★★★アラートNo232★★★' || chr(10) || 'No232エラーが発生しました。');
insert into call_message values(333, '★★★アラートNo233★★★' || chr(10) || 'No233エラーが発生しました。');
insert into call_message values(334, '★★★アラートNo234★★★' || chr(10) || 'No234エラーが発生しました。');
insert into call_message values(335, '★★★アラートNo235★★★' || chr(10) || 'No235エラーが発生しました。');
insert into call_message values(336, '★★★アラートNo236★★★' || chr(10) || 'No236エラーが発生しました。');
insert into call_message values(337, '★★★アラートNo237★★★' || chr(10) || 'No237エラーが発生しました。');
insert into call_message values(338, '★★★アラートNo238★★★' || chr(10) || 'No238エラーが発生しました。');
insert into call_message values(339, '★★★アラートNo239★★★' || chr(10) || 'No239エラーが発生しました。');
insert into call_message values(340, '★★★アラートNo240★★★' || chr(10) || 'No240エラーが発生しました。');
insert into call_message values(341, '★★★アラートNo241★★★' || chr(10) || 'No241エラーが発生しました。');
insert into call_message values(342, '★★★アラートNo242★★★' || chr(10) || 'No242エラーが発生しました。');
insert into call_message values(343, '★★★アラートNo243★★★' || chr(10) || 'No243エラーが発生しました。');
insert into call_message values(344, '★★★アラートNo244★★★' || chr(10) || 'No244エラーが発生しました。');
insert into call_message values(345, '★★★アラートNo245★★★' || chr(10) || 'No245エラーが発生しました。');
insert into call_message values(346, '★★★アラートNo246★★★' || chr(10) || 'No246エラーが発生しました。');
insert into call_message values(347, '★★★アラートNo247★★★' || chr(10) || 'No247エラーが発生しました。');
insert into call_message values(348, '★★★アラートNo248★★★' || chr(10) || 'No248エラーが発生しました。');
insert into call_message values(349, '★★★アラートNo249★★★' || chr(10) || 'No249エラーが発生しました。');
insert into call_message values(350, '★★★アラートNo250★★★' || chr(10) || 'No250エラーが発生しました。');
insert into call_message values(351, '★★★アラートNo251★★★' || chr(10) || 'No251エラーが発生しました。');
insert into call_message values(352, '★★★アラートNo252★★★' || chr(10) || 'No252エラーが発生しました。');
insert into call_message values(353, '★★★アラートNo253★★★' || chr(10) || 'No253エラーが発生しました。');
insert into call_message values(354, '★★★アラートNo254★★★' || chr(10) || 'No254エラーが発生しました。');
insert into call_message values(355, '★★★アラートNo255★★★' || chr(10) || 'No255エラーが発生しました。');
insert into call_message values(356, '★★★アラートNo256★★★' || chr(10) || 'No256エラーが発生しました。');
insert into call_message values(357, '★★★アラートNo257★★★' || chr(10) || 'No257エラーが発生しました。');
insert into call_message values(358, '★★★アラートNo258★★★' || chr(10) || 'No258エラーが発生しました。');
insert into call_message values(359, '★★★アラートNo259★★★' || chr(10) || 'No259エラーが発生しました。');
insert into call_message values(360, '★★★アラートNo260★★★' || chr(10) || 'No260エラーが発生しました。');
insert into call_message values(361, '★★★アラートNo261★★★' || chr(10) || 'No261エラーが発生しました。');
insert into call_message values(362, '★★★アラートNo262★★★' || chr(10) || 'No262エラーが発生しました。');
insert into call_message values(363, '★★★アラートNo263★★★' || chr(10) || 'No263エラーが発生しました。');
insert into call_message values(364, '★★★アラートNo264★★★' || chr(10) || 'No264エラーが発生しました。');
insert into call_message values(365, '★★★アラートNo265★★★' || chr(10) || 'No265エラーが発生しました。');
insert into call_message values(366, '★★★アラートNo266★★★' || chr(10) || 'No266エラーが発生しました。');
insert into call_message values(367, '★★★アラートNo267★★★' || chr(10) || 'No267エラーが発生しました。');
insert into call_message values(368, '★★★アラートNo268★★★' || chr(10) || 'No268エラーが発生しました。');
insert into call_message values(369, '★★★アラートNo269★★★' || chr(10) || 'No269エラーが発生しました。');
insert into call_message values(370, '★★★アラートNo270★★★' || chr(10) || 'No270エラーが発生しました。');
insert into call_message values(371, '★★★アラートNo271★★★' || chr(10) || 'No271エラーが発生しました。');
insert into call_message values(372, '★★★アラートNo272★★★' || chr(10) || 'No272エラーが発生しました。');
insert into call_message values(373, '★★★アラートNo273★★★' || chr(10) || 'No273エラーが発生しました。');
insert into call_message values(374, '★★★アラートNo274★★★' || chr(10) || 'No274エラーが発生しました。');
insert into call_message values(375, '★★★アラートNo275★★★' || chr(10) || 'No275エラーが発生しました。');
insert into call_message values(376, '★★★アラートNo276★★★' || chr(10) || 'No276エラーが発生しました。');
insert into call_message values(377, '★★★アラートNo277★★★' || chr(10) || 'No277エラーが発生しました。');
insert into call_message values(378, '★★★アラートNo278★★★' || chr(10) || 'No278エラーが発生しました。');
insert into call_message values(379, '★★★アラートNo279★★★' || chr(10) || 'No279エラーが発生しました。');
insert into call_message values(380, '★★★アラートNo280★★★' || chr(10) || 'No280エラーが発生しました。');
insert into call_message values(381, '★★★アラートNo281★★★' || chr(10) || 'No281エラーが発生しました。');
insert into call_message values(382, '★★★アラートNo282★★★' || chr(10) || 'No282エラーが発生しました。');
insert into call_message values(383, '★★★アラートNo283★★★' || chr(10) || 'No283エラーが発生しました。');
insert into call_message values(384, '★★★アラートNo284★★★' || chr(10) || 'No284エラーが発生しました。');
insert into call_message values(385, '★★★アラートNo285★★★' || chr(10) || 'No285エラーが発生しました。');
insert into call_message values(386, '★★★アラートNo286★★★' || chr(10) || 'No286エラーが発生しました。');
insert into call_message values(387, '★★★アラートNo287★★★' || chr(10) || 'No287エラーが発生しました。');
insert into call_message values(388, '★★★アラートNo288★★★' || chr(10) || 'No288エラーが発生しました。');
insert into call_message values(389, '★★★アラートNo289★★★' || chr(10) || 'No289エラーが発生しました。');
insert into call_message values(390, '★★★アラートNo290★★★' || chr(10) || 'No290エラーが発生しました。');
insert into call_message values(391, '★★★アラートNo291★★★' || chr(10) || 'No291エラーが発生しました。');
insert into call_message values(392, '★★★アラートNo292★★★' || chr(10) || 'No292エラーが発生しました。');
insert into call_message values(393, '★★★アラートNo293★★★' || chr(10) || 'No293エラーが発生しました。');
insert into call_message values(394, '★★★アラートNo294★★★' || chr(10) || 'No294エラーが発生しました。');
insert into call_message values(395, '★★★アラートNo295★★★' || chr(10) || 'No295エラーが発生しました。');
insert into call_message values(396, '★★★アラートNo296★★★' || chr(10) || 'No296エラーが発生しました。');
insert into call_message values(397, '★★★アラートNo297★★★' || chr(10) || 'No297エラーが発生しました。');
insert into call_message values(398, '★★★アラートNo298★★★' || chr(10) || 'No298エラーが発生しました。');
insert into call_message values(399, '★★★アラートNo299★★★' || chr(10) || 'No299エラーが発生しました。');
insert into call_message values(400, '★★★アラートNo300★★★' || chr(10) || 'No300エラーが発生しました。');


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

--GHKitで音声再生
http://calloncall.herokuapp.com/push_calling_fb3.php?message='テスト'
