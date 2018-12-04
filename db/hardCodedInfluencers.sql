INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Gary Vaynerchuck');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Joe Rogan');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Kylie Jenner');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Martin Larsson');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Kenza');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Margaux Dietz');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Isabella Jedler');
--INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Bill Gates');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Jon Olsson');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Janni Olsson Delér');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Anna Nyström');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Felix Kjellberg');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Marzia Bisognin');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Dalai Lama');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Marques Brownlee');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Lewis Hilsenteger');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Mark Hamill');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Justine Ezarik');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Casey Neistat');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Pope Francis');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Gordon Ramsay');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Jimmy Chin');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Justin Bieber');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Donald Trump');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Barack Obama');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Elon Musk');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Sandra Beijer');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Alexander Pärleros');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Mattias Hargin');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Bianca Ingrosso');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Fredrik Wikingsson');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Filip Hammar');

INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Jimmy Fallon');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Conan O''brien');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Stephen Colbert');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Neil Degrasse Tyson');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Alexander Gustafsson');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Isabella Löwengrip');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Johnny Depp');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Sia');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Lele Pons');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Zach King');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Kevin Hart');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Bo Burnham');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Jake Paul');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Stephen Fry');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Tom Riles');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Linus Sebastian');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Huda Kattan');
INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Peter Dinklage');

-- Insert Twitter accounts
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Gary Vaynerchuck'),'garyvee','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Joe Rogan'),'joerogan','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Kylie Jenner'),'KylieJenner','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Martin Larsson'),'RekklesLoL','twitter');



--INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Bill Gates'),'BillGates','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jon Olsson'),'JonOlsson','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Janni Olsson Delér'),'JanniDeler','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Anna Nyström'),'AnnaNystromT','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Felix Kjellberg'),'pewdiepie','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Marzia Bisognin'),'marziapie','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Dalai Lama'),'DalaiLama','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Marques Brownlee'),'MKBHD','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Lewis Hilsenteger'),'UnboxTherapy','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Mark Hamill'),'HamillHimself','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Justine Ezarik'),'ijustine','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Casey Neistat'),'CaseyNeistat','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Pope Francis'),'Pontifex','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Gordon Ramsay'),'gordonramsay','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jimmy Chin'),'jimkchin','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Justin Bieber'),'justinbieber','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Donald Trump'),'realDonaldTrump','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Barack Obama'),'BarackObama','twitter');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Sandra Beijer'),'niotillfem','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Alexander Pärleros'),'parleros','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Mattias Hargin'),'mattiashargin','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Bianca Ingrosso'),'biancaingrosso','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Fredrik Wikingsson'),'fwikingsson','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Filip Hammar'),'PodFF','twitter');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jimmy Fallon'),'jimmyfallon','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Conan O''brien'),'ConanOBrien','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Stephen Colbert'),'StephenAtHome','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Neil Degrasse Tyson'),'neiltyson','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Alexander Gustafsson'),'AlexTheMauler','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Isabella Löwengrip'),'lowengrip','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Johnny Depp'),'j0hnnydepp','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Sia'),'Sia','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Lele Pons'),'lelepons','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Zach King'),'FinalCutKing','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Kevin Hart'),'KevinHart4real','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Bo Burnham'),'boburnham','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jake Paul'),'jakepaul','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Stephen Fry'),'stephenfry','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Tom Riles'),'tommyriles','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Linus Sebastian'),'LinusTech','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Huda Kattan'),'hudabeauty','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Peter Dinklage'),'Peter_Dinklage','twitter');

-- Insert instagram accounts
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Gary Vaynerchuck'),'garyvee','instagram');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Joe Rogan'),'joerogan','instagram');



INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Margaux Dietz'),'margauxdietz','instagram');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Isabella Jedler'),'isabellajedler','instagram');



INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Anna Nyström'),'annanystrom','instagram');



INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Marques Brownlee'),'mkbhd','instagram');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Lewis Hilsenteger'),'unboxtherapy','instagram');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Justine Ezarik'),'ijustine','instagram');



INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jimmy Chin'),'jimmy_chin','instagram');





INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Alexander Pärleros'),'alexanderparleros','instagram');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Mattias Hargin'),'mattiashargin','instagram');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Bianca Ingrosso'),'biancaingrosso','instagram');



-- Insert youtube accounts
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Gary Vaynerchuck'),'GaryVaynerchuk','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Joe Rogan'),'PowerfulJRE','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Kylie Jenner'),'UCWkYXtnAuu7VTLPwUcRSB6A','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Martin Larsson'),'Rekkles','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Kenza'),'KenzaZouitenOfficial','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Margaux Dietz'),'UC4bC4z39cDT6UUgdmheEMHQ','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Isabella Jedler'),'UCh5d5qRnJiOJ2Q9J47scs3w','youtube');
--INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Bill Gates'),'thegatesnotes','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jon Olsson'),'JonOlssonVideoBlog','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Janni Olsson Delér'),'UCdyTmTQTyGA2I7mMBODzqig','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Anna Nyström'),'UCQvykOmBc-P4StIJT2glUkw','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Felix Kjellberg'),'PewDiePie','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Marzia Bisognin'),'CutiePieMarzia','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Dalai Lama'),'gyalwarinpoche','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Marques Brownlee'),'marquesbrownlee','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Lewis Hilsenteger'),'unboxtherapy','youtube');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Justine Ezarik'),'ijustine','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Casey Neistat'),'CaseyNeistat','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Pope Francis'),'UCsmv_x_1263xEa2x3tpcBXA','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Gordon Ramsay'),'gordonramsay','youtube');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Justin Bieber'),'Justin Bieber','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Donald Trump'),'Donald Trump Official','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Barack Obama'),'BarackObamadotcom','youtube');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Sandra Beijer'),'antagligen','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Alexander Pärleros'),'UCplxOVV3O7grwOCBMKQie-w','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Mattias Hargin'),'Mattias Hargin','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Bianca Ingrosso'),'UC_EVGyh8dABzKl0LwTw45mw','youtube');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jimmy Fallon'),'latenight','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Conan O''brien'),'teamcoco','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Stephen Colbert'),'UCMtFAi84ehTSYSE9XoHefig','youtube');


INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Isabella Löwengrip'),'UC5tBj6uYKNLxOmQwDn-dsgA','youtube');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Sia'),'siavideos','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Lele Pons'),'lelepons','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Zach King'),'ZachKingVine','youtube');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Bo Burnham'),'boburnham','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jake Paul'),'JakePaulProductions','youtube');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Tom Riles'),'TommyRiles1','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Linus Sebastian'),'LinusTechTips','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Huda Kattan'),'hudaheidik','youtube');


INSERT INTO USRVISIT (USRID, INFLID, TYPEOFVISIT)
    VALUES ((SELECT USRID FROM USR WHERE USRNAME = 'Filleboy'), 20, 'instagrampost');
INSERT INTO USRVISIT (USRID, INFLID, TYPEOFVISIT)
    VALUES ((SELECT USRID FROM USR WHERE USRNAME = 'Filleboy'), 21, 'instagrampost');
INSERT INTO TVOPERATORCONTENT (TITLE, TVOPERATORID, IMGURL, TEXTDESCRIPTION) VALUES ('Zenterido ad', 1, 'https://google.com/', 'Hello this is an ad');
INSERT INTO TVOPERATORCONTENTCLICK (USRID, ADID) VALUES (1,1);
