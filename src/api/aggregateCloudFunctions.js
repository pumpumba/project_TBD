var self = module.exports = {
    health: function(req, res) {
      res.send(
        "<h1>Hello! Welcome to Pumba!</h1> <p> For Twitter API alternative, go to ./api/twitter </p>"
      );
    },
    filters: function(req, res) {
      var filterType = req["query"]["filterType"];
      var assetType = req["query"]["assetType"];
      switch (assetType) {
        case "content": 
          switch(filterType) {
            case "influencer":
              res.json(['Popular', "<enter your influencers username>"])
              break;
            case 'user':
              res.json(['<enter your user ID here']);
              break;
            default:
              res.json(['Nothing available']);
          }
        case "tweet":
          switch (filterType) {
            case "influencer":
                res.json(["Popular", "<enter your user username>"]);
                break;
            case "user":
                res.json(['<enter your user ID here>']);
                break;
            default:
              res.json(["Nothing available"]);
          }
          break;
        case "YouTube video":
          switch (filterType) {
            case "influencer":
                res.json(["Popular", "<enter your user username>"]);
                break;
            case "user":
                res.json(['<enter your user ID here>']);
                break;
            default:
              res.json(["Nothing available"]);
          }
          break;
        case "Instagram post":
          switch (filterType) {
            case "influencer":
                res.json(["Popular", "<enter your user username>"]);
                break;
            case "user":
                res.json(['<enter your user ID here>']);
                break;
            default:
              res.json(["Nothing available"]);
          }
          break; 
        default:
          res.json(["Nothing available"]);
      }
    },
    content: function(req, res, client) {
      var Twitter = require("../../machinepack-twitternodemachines");
      var Instagram = require("../../machinepack-instagramnodemachines");
      var Youtube = require("../../machinepack-youtubenodemachines");
      var inputObj = req.body;
      var context = inputObj.context;
      if (inputObj.filterType == undefined) {
        res.json({ errorMessage: "You need to provide a filterType" });
      }
      var filterTypes = inputObj.filterType;
      if (inputObj.assetType == undefined) {
        res.json({ errorMessage: "You need to provide an assetType" });
      }
      var assetTypes = inputObj.assetType;
      if (inputObj.filterValue == undefined) {
        var filterValue = "";
      } else {
        var filterValue = inputObj.filterValue;
      }
      if (inputObj.context == undefined) {
        var context = "";
      } else {
        var context = inputObj.context;
      }
      if (isNaN(inputObj.offset)) {
        var offset = 0;
      } else {
        var offset = parseInt(inputObj.offset, 10);
      }
      if (isNaN(inputObj.limit)) {
        var limit = 5;
      } else {
        var limit = parseInt(inputObj.limit, 10);
      }
      var resultObj = [];
      var successFlag = false;
      for (var i = 0; i < assetTypes.length; i++) {
        switch (assetTypes[i]) {
          case "tweet":
            for (var j = 0; j < filterTypes.length; j++) {
              switch (filterTypes[j]) {
                case "user":
                  switch (filterValue) {
                    case "Popular":
                    //gather IDs from database of popular influencers
                    var screenNames = ["elonmusk", "justinbieber", "barackobama", "potus", "billgates", "beyonce"];
                      Twitter.getPopularTweets({
                        consumerKey: process.env.TWITTER_CONSUMER_KEY,
                        consumerSecret: process.env.TWITTER_CONSUMER_SECRET,
                        accessToken: process.env.TWITTER_ACCESS_TOKEN,
                        accessSecret: process.env.TWITTER_ACCESS_SECRET,
                        bearerToken: process.env.TWITTER_BEARER_TOKEN,
                        screenNames: screenNames,
                        count: limit
                      }).exec((err, result) => {
                        if (err) {
                          console.log("Error at getPopularTweets");
                          console.log(err);
                        } else {
                          res.json(result); //Shouldn't return json here yet, should do at the end but doesn't work at the moment cause it hangs in the loop for some reason.
                          successFlag = true;
                          //console.log("Length: " + result.length); // The loops also have to be changed in order for resultObj to contain right objects, because of async functions it won't output the right array of content at the moment.
                          for (var k = 0; k < result.length; k++) {
                            resultObj.push(result[k]);
                          }
                        }
                      });
                      break;
                    default:
                      //Database.getInfluencerIDs(influencerName)
                      Twitter.getUserTweets({
                        consumerKey: process.env.TWITTER_CONSUMER_KEY,
                        consumerSecret: process.env.TWITTER_CONSUMER_SECRET,
                        accessToken: process.env.TWITTER_ACCESS_TOKEN,
                        accessSecret: process.env.TWITTER_ACCESS_SECRET,
                        bearerToken: process.env.TWITTER_BEARER_TOKEN,
                        screenName: filterValue,
                        count: limit
                      }).exec((err, result) => {
                        if (err) {
                          console.log("Error at getPopularTweets");
                          console.log(err);
                        } else {
                          /*for(var k = 0; k<result.length;k++) {
                            resultObj.push(result[k]);
                          } */
                          successFlag = true;
                          res.json(result);
                        }
                      });
                  }
                  break;
                default:
                  res.json({
                    errorMessage:
                      "The cloud component failed to provide any content"
                  });
              }
            }
            break;
          default:
            res.json({
              errorMessage: "The cloud component failed to provide any content"
            });
        }
      }
    }
}