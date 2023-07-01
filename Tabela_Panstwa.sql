﻿DROP TABLE IF EXISTS [Tabela_Panstwa]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Tabela_Panstwa](
	[Panstwo] [nvarchar](50) NOT NULL,
	[Kontynent] [nvarchar](50) NULL,
	[Stolica] [nvarchar](50) NULL,
	[Powierzchnia_w_km2] [int] NULL,
	[Ludnosc_ogolem] [int] NULL,
	[Waluta] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tabela_Panstwa] PRIMARY KEY CLUSTERED 
(
	[Panstwo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT INTO Tabela_Panstwa (Panstwo, Kontynent, Stolica, Powierzchnia_w_km2, Ludnosc_ogolem, Waluta) VALUES
(N'Afganistan',N'Azja',N'Kabul','652230','30419928',N'Afgani'),
(N'Albania',N'Europa',N'Tirana','28748','3195000',N'lek'),
(N'Algieria',N'Afryka',N'Algier','2381741','34178188',N'Dinar algierski'),
(N'Andora',N'Europa',N'Andora','468','84525',N'Euro'),
(N'Angola',N'Afryka',N'Luanda','1246700','17312000',N'Kwanza'),
(N'Antigua i Barbuda',N'Ameryka Północna',N'Saint Johns','435','85420',N'Dolar wschodnio-karaibski'),
(N'Arabia Saudyjska',N'Azja',N'Rijad','2149690','28686633',N'Rial saudyjski'),
(N'Argentyna',N'Ameryka Południowa',N'Buenos Aires','2766890','40913584',N'Peso argentyńskie'),
(N'Armenia',N'Azja',N'Erywań','29800','3259100',N'Dram'),
(N'Australia',N'Australia i Oceania',N'Canberra','7686850','22343203',N'Dolar australijski'),
(N'Austria',N'Europa',N'Wiedeń','83871','8402549',N'Euro'),
(N'Azerbejdżan',N'Azja',N'Baku','86600','9493600',N'Manat azerski'),
(N'Bahamy',N'Ameryka Północna',N'Nassau','13940','307451',N'Dolar bahamski'),
(N'Bahrajn',N'Azja',N'Manama','620','1323535',N'Dinar Bahrajnu'),
(N'Bangladesz',N'Azja',N'Dhaka','144000','162221000',N'Taka'),
(N'Barbados',N'Ameryka Północna',N'Bridgetown','431','281968',N'Dolar Barbadosu'),
(N'Belgia',N'Europa',N'Bruksela','30528','10584534',N'Euro'),
(N'Belize',N'Ameryka Północna',N'Belmopan','22966','266440',N'Dolar Belize'),
(N'Benin',N'Afryka',N'Porto-Novo','112620','8295000',N'Frank CFA'),
(N'Bhutan',N'Azja',N'Thimphu','47000','682321',N'Ngultrum'),
(N'Białoruś',N'Europa',N'Mińsk','207600','9474200',N'Rubel białoruski'),
(N'Boliwia',N'Ameryka Południowa',N'Sucre','1098580','9248000',N'Boliviano'),
(N'Bośnia i Hercegowina',N'Europa',N'Sarajewo','51129','4590310',N'Marka zamienna'),
(N'Botswana',N'Afryka',N'Gaborone','600370','1842000',N'Pula'),
(N'Brazylia',N'Ameryka Południowa',N'Brasilia','8511965','201103330',N'Real brazylijski'),
(N'Brunei',N'Azja',N'Bandar Seri Begawan','5770','381371',N'Dolar Brunei'),
(N'Bułgaria',N'Europa',N'Sofia','110910','7531000',N'Lew'),
(N'Burkina Faso',N'Afryka',N'Wagadugu','274200','15746232',N'Frank CFA'),
(N'Burundi',N'Afryka',N'Bużumbura','27830','8691000',N'Frank burundyjski'),
(N'Chile',N'Ameryka Południowa',N'Santiago','756950','16601707',N'Peso chilijskie'),
(N'Chiny',N'Azja',N'Pekin','9596960','1347374752',N'Yuan'),
(N'Chorwacja',N'Europa',N'Zagrzeb','56542','4437460',N'Kuna'),
(N'Cypr',N'Azja',N'Nikozja','9250','794600',N'Euro'),
(N'Czad',N'Afryka',N'Ndżamena','1284000','10758945',N'Frank CFA'),
(N'Czarnogóra',N'Europa',N'Podgorica','13812','672180',N'Euro'),
(N'Czechy',N'Europa',N'Praga','78866','10532770',N'Korona czeska'),
(N'Dania',N'Europa',N'Kopenhaga','43098','5540241',N'Korona duńska'),
(N'Demokratyczna Republika Konga',N'Afryka',N'Kinszasa','2344858','66515000',N'Frank kongijski'),
(N'Dominika',N'Ameryka Północna',N'Roseau','754','72000',N'Dolar wschodnio-karaibski'),
(N'Dominikana',N'Ameryka Północna',N'Santo Domingo','48730','9049595',N'Peso dominikańskie'),
(N'Dżibuti',N'Afryka',N'Dżibuti','23200','506221',N'Frank dżibutyjski'),
(N'Egipt',N'Afryka, Azja',N'Kair','1001450','80471869',N'Funt egipski'),
(N'Ekwador',N'Ameryka Południowa',N'Quito','283560','13928000',N'Dolar amerykański'),
(N'Erytrea',N'Afryka',N'Asmara','121320','5028000',N'Nakfa'),
(N'Estonia',N'Europa',N'Tallinn','45226','1340122',N'Euro'),
(N'Etiopia',N'Afryka',N'Addis Abeba','1127127','81238000',N'Birr'),
(N'Fidżi',N'Australia i Oceania',N'Suva','18272','849000',N'Dolar Fidżi'),
(N'Filipiny',N'Azja',N'Manila','300000','92681000',N'Peso filipińskie'),
(N'Finlandia',N'Europa',N'Helsinki','338145','5313026',N'Euro'),
(N'Francja',N'Europa',N'Paryż','675417','66000000',N'Euro'),
(N'Gabon',N'Afryka',N'Libreville','267667','1454867',N'Frank CFA'),
(N'Gambia',N'Afryka',N'Bandżul','11295','1690000',N'Dalasi'),
(N'Ghana',N'Afryka',N'Akra','239460','23000000',N'Cedi'),
(N'Grecja',N'Europa',N'Ateny','131957','11216708',N'Euro'),
(N'Grenada',N'Ameryka Północna',N'Saint Georges','344','89258',N'Dolar wschodnio-karaibski'),
(N'Gruzja',N'Azja',N'Tbilisi','69700','4630841',N'Lari'),
(N'Gujana',N'Ameryka Południowa',N'Georgetown','214970','769095',N'Euro'),
(N'Gwatemala',N'Ameryka Północna',N'Gwatemala','108890','12013907',N'Quetzal'),
(N'Gwinea',N'Afryka',N'Konakry','245857','9950670',N'Frank gwinejski'),
(N'Gwinea Bissau',N'Afryka',N'Bissau','36120','1475000',N'Frank CFA'),
(N'Gwinea Równikowa',N'Afryka',N'Malabo','28051','616459',N'Frank CFA'),
(N'Haiti',N'Ameryka Północna',N'Port-au-Prince','27750','8925000',N'Gourde'),
(N'Hiszpania',N'Europa',N'Madryt','504645','47150819',N'Euro'),
(N'Holandia',N'Europa',N'Amsterdam','41526','16509303',N'Euro'),
(N'Honduras',N'Ameryka Północna',N'Tegucigalpa','112090','7325000',N'Lempira'),
(N'Indie',N'Azja',N'Nowe Delhi','3287590','1166079217',N'Rupia indyjska'),
(N'Indonezja',N'Azja',N'Dżakarta','1919440','242968342',N'Rupia indonezyjska'),
(N'Irak',N'Azja',N'Bagdad','438317','30399572',N'Dinar iracki'),
(N'Iran',N'Azja',N'Teheran','1648195','70495782',N'Rial irański'),
(N'Irlandia',N'Europa',N'Dublin','70273','4581269',N'Euro'),
(N'Islandia',N'Europa',N'Reykjavík','103125','306694',N'Korona islandzka'),
(N'Izrael',N'Azja',N'Jerozolima','22072','7653600',N'Nowy izraelski szekel'),
(N'Jamajka',N'Ameryka Północna',N'Kingston','10991','2700000',N'Dolar jamajski'),
(N'Japonia',N'Azja',N'Tokio','377835','126475664',N'Jen'),
(N'Jemen',N'Azja',N'Sana','527968','23495361',N'Rial jemeński'),
(N'Jordania',N'Azja',N'Amman','92300','5759732',N'Dinar jordański'),
(N'Kambodża',N'Azja',N'Phnom Penh','181040','13388910',N'Riel kambodżański'),
(N'Kamerun',N'Afryka',N'Jaunde','475440','18100000',N'Frank CFA'),
(N'Kanada',N'Ameryka Północna',N'Ottawa','9976140','34110000',N'Dolar kanadyjski'),
(N'Katar',N'Azja',N'Doha','11437','928635',N'Rial katarski'),
(N'Kazachstan',N'Azja, Europa',N'Astana','2717300','15399437',N'Tenge'),
(N'Kenia',N'Afryka',N'Nairobi','582650','37953840',N'Szyling kenijski'),
(N'Kirgistan',N'Azja',N'Biszkek','198500','5357000',N'Som'),
(N'Kiribati',N'Australia i Oceania',N'Bairiki','811','103092',N'Dolar australijski'),
(N'Kolumbia',N'Ameryka Południowa',N'Bogota','1139825','45730834',N'Peso kolumbijskie'),
(N'Komory',N'Afryka',N'Moroni','2170','671247',N'Frank komoryjski'),
(N'Kongo',N'Afryka',N'Brazzaville','342000','3756000',N'Frank CFA'),
(N'Korea Południowa',N'Azja',N'Seul','99720','50062000',N'Won południowo-koreański'),
(N'Korea Północna',N'Azja',N'Pjongjang','120540','22757275',N'Won północno-koreański'),
(N'Kostaryka',N'Ameryka Północna',N'San José','51100','4325000',N'Colón'),
(N'Kuba',N'Ameryka Północna',N'Hawana','110860','11424000',N'Peso kubańskie'),
(N'Kuwejt',N'Azja',N'Kuwejt','17818','2597000',N'Dinar kuwejcki'),
(N'Laos',N'Azja',N'Wientian','236800','6521998',N'Kip'),
(N'Lesotho',N'Afryka',N'Maseru','30355','2031348',N'Loti'),
(N'Liban',N'Azja',N'Bejrut','10452','3925502',N'Funt libański'),
(N'Liberia',N'Afryka',N'Monrovia','111370','3200000',N'Dolar liberyjski'),
(N'Libia',N'Afryka',N'Trypolis','1759540','6310434',N'Dinar libijski'),
(N'Liechtenstein',N'Europa',N'Vaduz','160','34761',N'Frank szwajcarski'),
(N'Litwa',N'Europa',N'Wilno','65200','3225346',N'Lit'),
(N'Luksemburg',N'Europa',N'Luksemburg','2586','474413',N'Euro'),
(N'Łotwa',N'Europa',N'Ryga','64589','2224400',N'Łat'),
(N'Macedonia',N'Europa',N'Skopje','25713','2061000',N'Denar macedoński'),
(N'Madagaskar',N'Afryka',N'Antananarywa','587040','20653556',N'Ariary'),
(N'Malawi',N'Afryka',N'Lilongwe','118480','13600000',N'Kwacha'),
(N'Malediwy',N'Azja',N'Male','300','396334',N'Rupia malediwska'),
(N'Malezja',N'Azja',N'Kuala Lumpur','329750','27730000',N'Ringgit'),
(N'Mali',N'Afryka',N'Bamako','1240192','12666987',N'Frank CFA'),
(N'Malta',N'Europa',N'Valletta','316','403532',N'Euro'),
(N'Maroko',N'Afryka',N'Rabat','446550','34859364',N'Dirham marokański'),
(N'Mauretania',N'Afryka',N'Nawakszut','1030700','3250000',N'Ugija'),
(N'Mauritius',N'Afryka',N'Port Louis','2045','1230602',N'Rupia maurytyjska'),
(N'Meksyk',N'Ameryka Północna',N'Meksyk','1972550','112336538',N'Peso meksyka-ńskie'),
(N'Mikronezja',N'Australia i Oceania',N'Palikir','702','135000',N'Dolar amerykański'),
(N'Mjanma',N'Azja',N'Naypyidaw','678500','53414374',N'Kiat'),
(N'Mołdawia',N'Europa',N'Kiszyniów','33843','4324450',N'Lej mołdawski'),
(N'Monako',N'Europa',N'Monako','2','32796',N'Euro'),
(N'Mongolia',N'Azja',N'Ułan Bator','1564116','2736800',N'Tugrik'),
(N'Mozambik',N'Afryka',N'Maputo','801590','21000000',N'Metical'),
(N'Namibia',N'Afryka',N'Windhuk','825418','2089000',N'Dolar namibijski'),
(N'Nauru',N'Australia i Oceania',N'Yaren','21','14019',N'Dolar australijski'),
(N'Nepal',N'Azja',N'Katmandu','140800','28635000',N'Rupia nepalska'),
(N'Niemcy',N'Europa',N'Berlin','357114','81772000',N'Euro'),
(N'Niger',N'Afryka',N'Niamey','1267000','15306252',N'Frank CFA'),
(N'Nigeria',N'Afryka',N'Abudża','923768','154729000',N'Naira'),
(N'Nikaragua',N'Ameryka Północna',N'Managua','129494','5570000',N'Córdoba'),
(N'Norwegia',N'Europa',N'Oslo','324220','4769000',N'Korona norweska'),
(N'Nowa Zelandia',N'Australia i Oceania',N'Wellington','268680','4393500',N'Dolar nowo-zelandzki'),
(N'Oman',N'Azja',N'Maskat','309500','3312000',N'Rial omański'),
(N'Pakistan',N'Azja',N'Islamabad','803940','176242949',N'Rupia pakistańska'),
(N'Palau',N'Australia i Oceania',N'Ngerulmud','508','20800',N'Dolar amerykański'),
(N'Panama',N'Ameryka Północna',N'Panama','78200','3293000',N'Balboa'),
(N'Papua-Nowa Gwinea',N'Australia i Oceania',N'Port Moresby','462840','5932000',N'Kina'),
(N'Paragwaj',N'Ameryka Południowa',N'Asunción','406750','6670000',N'Guarani'),
(N'Peru',N'Ameryka Południowa',N'Lima','1285220','29181000',N'Sol'),
(N'Polska',N'Europa',N'Warszawa','322575','38200037',N'Złoty'),
(N'Portugalia',N'Europa',N'Lizbona','92391','10677000',N'Euro'),
(N'Południowa Afryka',N'Afryka',N'Pretoria','1219912','48783000',N'Rand'),
(N'Republika Środkowoafrykańska',N'Afryka',N'Bangi','622984','4370000',N'Frank CFA'),
(N'Republika Zielonego Przylądka',N'Afryka',N'Praia','4033','499796',N'Escudo'),
(N'Rosja',N'Azja, Europa',N'Moskwa','17075400','142914136',N'Rubel rosyjski'),
(N'Rumunia',N'Europa',N'Bukareszt','238391','22215421',N'Lej'),
(N'Rwanda',N'Afryka',N'Kigali','26338','10186000',N'Frank rwandyjski'),
(N'Saint Kitts i Nevis',N'Ameryka Północna',N'Basseterre','261','38819',N'Dolar wschodnio-karaibski'),
(N'Saint Lucia',N'Ameryka Północna',N'Castries','616','164213',N'Dolar wschodnio-karaibski'),
(N'Saint Vincent i Grenadyny',N'Ameryka Północna',N'Kingstown','389','119000',N'Dolar wschodnio-karaibski'),
(N'Salwador',N'Ameryka Północna',N'San Salvador','21040','6820000',N'Dolar amerykański'),
(N'Samoa',N'Australia i Oceania',N'Apia','2944','177714',N'Tala'),
(N'San Marino',N'Europa',N'San Marino','61','31817',N'Euro'),
(N'Senegal',N'Afryka',N'Dakar','196190','12521851',N'Frank CFA'),
(N'Serbia',N'Europa',N'Belgrad','77474','7498001',N'Dinar serbski'),
(N'Seszele',N'Afryka',N'Victoria','455','86525',N'Rupia seszelska'),
(N'Sierra Leone',N'Afryka',N'Freetown','71740','6150000',N'Leone'),
(N'Singapur',N'Azja',N'Singapur','692','4608000',N'Dolar singapurski'),
(N'Słowacja',N'Europa',N'Bratysława','49035','5455000',N'Euro'),
(N'Słowenia',N'Europa',N'Lublana','20273','2039399',N'Euro'),
(N'Somalia',N'Afryka',N'Mogadiszu','637700','9559000',N'Szyling somalijski'),
(N'Sri Lanka',N'Azja',N'Sri Dźajawardanapura Kotte','65610','20010000',N'Rupia lankijska'),
(N'Stany Zjednoczone',N'Ameryka Północna',N'Waszyngton','9373967','311280492',N'Dolar amerykański'),
(N'Suazi',N'Afryka',N'Mbabane','17363','1138227',N'Lilangeni'),
(N'Sudan',N'Afryka',N'Chartum','1886068','30894000',N'Funt sudański'),
(N'Sudan Południowy',N'Afryka',N'Dżuba','589745','8260490',N'Funt południowo-sudański'),
(N'Surinam',N'Ameryka Południowa',N'Paramaribo','163270','476000',N'Dolar surinamski'),
(N'Syria',N'Azja',N'Damaszek','185180','19748000',N'Funt syryjski'),
(N'Szwajcaria',N'Europa',N'Berno','41290','7725200',N'Frank szwajcarski'),
(N'Szwecja',N'Europa',N'Sztokholm','449964','9331523',N'Korona szwedzka'),
(N'Tadżykistan',N'Azja',N'Duszanbe','143100','7100000',N'Somoni'),
(N'Tajlandia',N'Azja',N'Bangkok','514000','65493000',N'Baht'),
(N'Tanzania',N'Afryka',N'Dodoma','945087','39384223',N'Szyling tanzański'),
(N'Timor Wschodni',N'Azja',N'Dili','15007','1109000',N'Dolar amerykański'),
(N'Togo',N'Afryka',N'Lomé','56785','5400000',N'Frank CFA'),
(N'Tonga',N'Australia i Oceania',N'Nukualofa','748','119009',N'Paanga'),
(N'Trynidad i Tobago',N'Ameryka Południowa',N'Port-of-Spain','5128','1229000',N'Dolar Trynidadu i Tobago'),
(N'Tunezja',N'Afryka',N'Tunis','163610','10384000',N'Dinar tunezyjski'),
(N'Turcja',N'Azja, Europa',N'Ankara','783562','77804122',N'Lira turecka'),
(N'Turkmenistan',N'Azja',N'Aszchabad','488100','5180000',N'Manat turkmeński'),
(N'Tuvalu',N'Australia i Oceania',N'Vaiaku na atolu Funafuti','26','12373',N'Dolar australijski'),
(N'Uganda',N'Afryka',N'Kampala','236036','32369558',N'Szyling ugandyjski'),
(N'Ukraina',N'Europa',N'Kijów','603700','45706126',N'Hrywna'),
(N'Urugwaj',N'Ameryka Południowa',N'Montevideo','176220','3477779',N'Peso urugwajskie'),
(N'Uzbekistan',N'Azja',N'Taszkent','447400','27610000',N'Sum'),
(N'Vanuatu',N'Australia i Oceania',N'Port Vila','12189','243304',N'Vatu'),
(N'Watykan',N'Europa',N'Watykan','1','824',N'Euro'),
(N'Wenezuela',N'Ameryka Południowa',N'Caracas','916445','30102382',N'Boliwar fuerte'),
(N'Węgry',N'Europa',N'Budapeszt','93030','9982000',N'Forint'),
(N'Wielka Brytania',N'Europa',N'Londyn','244820','62222000',N'Funt szterling'),
(N'Wietnam',N'Azja',N'Hanoi','331051','86024600',N'Đồng'),
(N'Włochy',N'Europa',N'Rzym','301230','60418711',N'Euro'),
(N'Wybrzeże Kości Słoniowej',N'Afryka',N'Jamusukro','322460','18373000',N'Frank CFA'),
(N'Wyspy Marshalla',N'Australia i Oceania',N'Majuro','181','59071',N'Dolar amerykański'),
(N'Wyspy Salomona',N'Australia i Oceania',N'Honiara','28450','552000',N'Dolar Wysp Salomona'),
(N'Wyspy Świętego Tomasza i Książęca',N'Afryka',N'Sao Tomé','1001','193410',N'Dobra'),
(N'Zambia',N'Afryka',N'Lusaka','752614','11500000',N'Kwacha'),
(N'Zimbabwe',N'Afryka',N'Harare','390580','12383000',N'Dolar amerykański'),
(N'Zjednoczone Emiraty Arabskie',N'Azja',N'Abu Zabi','83600','4621000',N'Dirham');