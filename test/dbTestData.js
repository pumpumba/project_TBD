data = ["INSERT INTO USR(USRNAME, HASHEDPWD, EMAIL, AGE, SEX) VALUES('Filleboy', 'BAJSBAJS', 'c.filip.cornell@gmail.com', 24, 'Male'); ",
  "INSERT INTO LOCATION(LOCATIONNAME, LOCATIONTYPE) VALUES('Sweden', 'COUNTRY'); ",
  "INSERT INTO LOCATION(LOCATIONNAME, LOCATIONTYPE) VALUES('United States', 'COUNTRY'); ",
  "INSERT INTO LOCATION(LOCATIONNAME, LOCATIONTYPE, COUNTRYID) VALUES('New York', 'CITY', (select locationid from location where location.locationname = 'United States')); ",
  "INSERT INTO LOCATION(LOCATIONNAME, LOCATIONTYPE, COUNTRYID) VALUES('Stockholm', 'CITY', (select locationid from location where location.locationname = 'Sweden')); ",
  "INSERT INTO INFLUENCER(INFLUENCERNAME, REALNAME, AGE, CITYID, COUNTRYID, SEX) VALUES('Jockiboi', 'Joakim Lundell', 33, (select locationid from location where location.locationname = 'Stockholm'), (select locationid from location where location.locationname = 'Sweden'), 'Male'); ",
  "INSERT INTO PLATFORMACCOUNT(INFLID, ACTNAME, PLATFORM, NRFLWRS, MEMBERSINCE, ACTURL) VALUES((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jockiboi'), 'Jockiboi', 'instagram', 23121, (SELECT NOW():: date), 'instagram.com/Jockiboi'); ",
  "INSERT INTO USRFLWINFL(FLWRID, INFLID) VALUES ((SELECT USRID FROM USR WHERE USRNAME = 'Filleboy'), (SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Jockiboi'));",
  "INSERT INTO INFLUENCER (INFLUENCERNAME) VALUES ('Marques Brownlee');",
  "INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Marques Brownlee'),'MKBHD','twitter');",
  "INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Marques Brownlee'),'mkbhd','instagram');",
  "INSERT INTO PLATFORMACCOUNT (INFLID, ACTNAME, PLATFORM) VALUES ((SELECT INFLUENCERID FROM INFLUENCER WHERE INFLUENCERNAME = 'Marques Brownlee'),'marquesbrownlee','youtube');"]
module.exports = { data };
