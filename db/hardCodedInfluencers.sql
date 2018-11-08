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


-- Insert Twitter accounts
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Gary Vaynerchuck'),'garyvee','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Joe Rogan'),'joerogan','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Kylie Jenner'),'KylieJenner','twitter');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Martin Larsson'),'RekklesLoL','twitter');



INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Bill Gates'),'BillGates','twitter');
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
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Kylie Jenner'),'Kylie Jenner','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Martin Larsson'),'Rekkles','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Kenza'),'Kenza Zouiten Subosic','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Margaux Dietz'),'Margaux dietz','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Isabella Jedler'),'Isabella Jedler','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Bill Gates'),'thegatesnotes','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jon Olsson'),'JonOlssonVideoBlog','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Janni Olsson Delér'),'Janni Olsson Deler','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Anna Nyström'),'Anna Nyström','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Felix Kjellberg'),'PewDiePie','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Marzia Bisognin'),'CutiePieMarzia','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Dalai Lama'),'Dalai Lama','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Marques Brownlee'),'marquesbrownlee','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Lewis Hilsenteger'),'unboxtherapy','youtube');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Justine Ezarik'),'ijustine','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Casey Neistat'),'CaseyNeistat','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Pope Francis'),'The Pope Video','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Gordon Ramsay'),'gordonramsay','youtube');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Justin Bieber'),'Justin Bieber','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Donald Trump'),'Donald Trump Official','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Barack Obama'),'BarackObamadotcom','youtube');

INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Sandra Beijer'),'Sandra Beijer','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Alexander Pärleros'),'Alexander Pärleros','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Mattias Hargin'),'Mattias Hargin','youtube');
INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Bianca Ingrosso'),'Bianca Ingrosso','youtube');
