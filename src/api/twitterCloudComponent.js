module.exports = (function(){
  var express = require('express');
  var Twitter = require("machinepack-twitternodemachines");
  const bodyParser = require("body-parser");

  app = express.Router();

  app.get("/", (req, res) => {
    res.send(
      "<h1>Hello! Welcome to Pumba!</h1> <p> For Twitter API alternative, go to ./api/twitter </p>"
    );
  });

  app.get("/health", (req, res) => {
    res.status(200);
  });
  
  app.get("/filters", (req, res) => {
    var filterType = req["query"]["filterType"];
    var assetType = req["query"]["assetType"];
    switch(assetType) {
      case 'tweet':
        switch(filterType) {
          case 'user':
              res.json(['Popular', '<enter your influencers username>']);
              break;
          default:
              res.json(['Nothing available']);
        }
        break;
      default:
        res.json(['Nothing available']);
    }
  });
  app.use(bodyParser.urlencoded({
    extended: true
  }));

  app.use(bodyParser.json());

  app.post("/content", (req, res) => {
    var inputObj = req.body;
    var filterTypes = inputObj.filterType;
    var assetTypes = inputObj.assetType;
    var filterValue = inputObj.filterValue;
    var context = inputObj.context;
    var offset = parseInt(inputObj.offset, 10);
    var limit = parseInt(inputObj.limit, 10);
    var resultObj = [];
    for(var i = 0;i<assetTypes.length;i++) {
      switch(assetTypes[i]) {
        case "tweet":
          for(var j = 0;j<filterTypes.length;j++) {
            switch(filterTypes[j]) {
              case "user":
                switch(filterValue) {
                  case 'Popular':
                    var screenNames = ["elonmusk", "justinbieber", "barackobama", "potus", "billgates"];
                    console.log("Entered Popular case");
                    Twitter.getPopularTweets({
                      consumerKey: process.env.TWITTER_CONSUMER_KEY,
                      consumerSecret: process.env.TWITTER_CONSUMER_SECRET,
                      accessToken: process.env.TWITTER_ACCESS_TOKEN,
                      accessSecret: process.env.TWITTER_ACCESS_SECRET,
                      bearerToken: process.env.TWITTER_BEARER_TOKEN,
                      screenNames: screenNames,
                      count: limit
                    }).exec({
                      error: function(err) {
                        console.log("Error at getPopularTweets");
                        console.log(err);
                      },
                      success: function(result) {
                        res.json(result); //Shouldn't return json here yet, should do at the end but doesn't work at the moment cause it hangs in the loop for some reason.
                        console.log("Length: " + result.length); // The loops also have to be changed in order for resultObj to contain right objects, because of async functions it won't output the right array of content at the moment.
                        for(var k = 0; k<result.length;k++) {
                          console.log(k);
                          resultObj.push(result[k]);
                          console.log(k);
                        }
                      }
                    })
                    break;
                  default:
                    Twitter.getUserTweets({
                      consumerKey: process.env.TWITTER_CONSUMER_KEY,
                      consumerSecret: process.env.TWITTER_CONSUMER_SECRET,
                      accessToken: process.env.TWITTER_ACCESS_TOKEN,
                      accessSecret: process.env.TWITTER_ACCESS_SECRET,
                      bearerToken: process.env.TWITTER_BEARER_TOKEN,
                      screenName: filterValue,
                      count: limit
                    }).exec({
                      error: function(err) {
                        console.log("Error at getPopularTweets");
                        console.log(err);
                      },
                      success: function(result) {
                        for(var k = 0; k<result.length;k++) {
                          resultObj.push(result[k]);
                        }
                      }
                    })
                }
                break;
              default:
                console.log("Shouldn't come here at the moment1");
            }
          }
          break;
        default:
          console.log("Shouldn't come here at the moment2");
      }
    }
    //res.json(resultObj);
  
  });
  
  app.get("/search", (req, res) => {
    res.send(
      "This request is currently not available"
    );
  });

  return app;
})();