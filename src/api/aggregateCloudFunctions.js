const dbFunctions = require('../dbFunctions');
var self = module.exports = {
  health: function (req, res) {
    res.send(
      "<h1>Hello! Welcome to Pumba!</h1> <p> For Twitter API alternative, go to ./api/twitter </p>"
    );
  },

  filters: function (req, res) {
    var filterType = req["query"]["filterType"];
    var assetType = req["query"]["assetType"];
    switch (assetType) {
      case "all":
        res.json(filterSwitch(assetType, filterType));
        break;
      case "tweet":
        res.json(filterSwitch(assetType, filterType));
        break;
      case "youtube video":
        res.json(filterSwitch(assetType, filterType));
        break;
      case "instagram post":
        res.json(filterSwitch(assetType, filterType));
        break;
      default:
        res.json(["Nothing available"]);
    }
  },
  //This is the aggregate/content call
  content: function (req, res, databaseClient) {
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
    var resultObject = [];
    var currentAsset = 0;
    var currentFilter = 0;
    //Enters the recursive getContent loop, works like a for loop, but once it gets into a callback it start the next iteration.
    getContent(assetTypes, filterTypes, filterValue, context, limit, currentAsset, currentFilter, resultObject, databaseClient, (response) => {
      resultObject = response;
      res.json(resultObject);
    });
  }
};

//get content from specific asset type, continuation from getContent
var getContentFromAsset = function(platform, assetType, assetTypes, filterTypes, filterValue, context, limit, currentAssetNum, currentFilterNum, resultObj, databaseClient, callback) {
  switch (filterTypes[currentFilterNum]) {
    case "influencer":
      dbFunctions.getContentFromInfluencer(platform, filterValue[0], limit, filterValue[1], databaseClient, (response) => {
        result = response['rows'];
        if (result != undefined) {
          for (var k = 0; k < result.length; k++) {
            resultObj.push(result[k]);
          }
        }

        if (currentAssetNum != (assetTypes.length - 1)) {
          //Go into next iteration of getContent
          getContent(assetTypes, filterTypes, filterValue, context, currentAssetNum + 1, currentFilterNum + 1, resultObj, callback);
        }
        else {
          //All iterations done, send back the result
          callback(resultObj);
        }
      });
      break;
    case "user":
      dbFunctions.getFollowedInfluencersPosts(filterValue, limit, platform, databaseClient, (response) => {
        result = response['rows'];
        if (result != undefined) {
          for (var k = 0; k < result.length; k++) {
            resultObj.push(result[k]);
          }
        }
        if (currentAssetNum != (assetTypes.length - 1)) {
          //Go into next iteration of getContent
          getContent(assetTypes, filterTypes, filterValue, context, currentAssetNum + 1, currentFilterNum + 1, resultObj, callback);
        }
        else {
          //All iterations done, send back the result
          callback(resultObj);
        }
      });
      break;
    case "popular":
      dbFunctions.getLatestPosts(filterValue, platform, limit, databaseClient, (response) => {
        result = response['rows'];
        if (result != undefined) {
          for (var k = 0; k < result.length; k++) {
            resultObj.push(result[k]);
          }
        }
        if (currentAssetNum != (assetTypes.length - 1)) {
          //Go into next iteration of getContent
          getContent(assetTypes, filterTypes, filterValue, context, currentAssetNum + 1, currentFilterNum + 1, resultObj, callback);
        }
        else {
          //All iterations done, send back the result
          callback(resultObj);
        }
      });
      break;
    //Search should be a functions that searches for influencers in our database
    case "search":
      callback("Search option is not available at the moment");
      break;
    //Updates the database with new content from our social media API:s
    case "update":
      if(platform == 'all') {
        callback('Can not update all platform at once. Update each one by one.');
      }
      else {
        dbFunctions.getPlatformAccounts(platform, databaseClient, (response1) => {
          var influencers = response1['rows'];
          var accounts = [];
          if (influencers != undefined) {
            for (var k = 0; k < influencers.length; k++) {
              accounts.push(influencers[k]);
            }
          }
          var currentInfluencerAccount = 0;
          if (currentInfluencerAccount < accounts.length) {
            var posts = [];
            getContentFromInfluencerFromAPI(assetType, accounts, currentInfluencerAccount, posts, limit, (response2) => {
              if (response2.length != 0) {
                storeContent(assetType, response2, 0, databaseClient, (response3) => {
                  resultObj.push("Success");
                  if (currentAssetNum != (assetTypes.length - 1)) {
                    getContent(assetTypes, filterTypes, filterValue, context, currentAssetNum + 1, currentFilterNum + 1, resultObj, callback);
                  }
                  else {
                    callback(resultObj);
                  }
                });
              }
              else {
                if (currentAssetNum != (assetTypes.length - 1)) {
                  getContent(assetTypes, filterTypes, filterValue, context, currentAssetNum + 1, currentFilterNum + 1, resultObj, callback);
                }
                else {
                  callback(resultObj);
                }
              }
            });
          }
          else {
            if (currentAssetNum != (assetTypes.length - 1)) {
              getContent(assetTypes, filterTypes, filterValue, context, currentAssetNum + 1, currentFilterNum + 1, resultObj, callback);
            }
            else {
              callback(resultObj);
            }
          }
        });
      }
      break;
    default:
      callback("The cloud component failed to provide any content");
  }
};
//A switch function for the aggregate/filters call
var filterSwitch = function(assetType, filterType) {
  switch (filterType) {
    case "search":
      return(["<enter your influencers username>"]);
      break;
    case "influencer":
      return(["<enter your influencers id>", "<enter your users ID>"]);
      break;
    case "user":
      return(['<enter your user ID here>']);
      break;
    case "popular":
      return(['<no entry needed>']);
      break;
    case "update":
      if(assetType != 'all') {
        return(['<no entry needed>']);
      }
      else {
        return(['<update is not available for asset type "all">']);
      }
      break;
    default:
      return(["Nothing available"]);
  }
};
//The main content function
var getContent = function (assetTypes, filterTypes, filterValue, context, limit, currentAssetNum, currentFilterNum, resultObj, databaseClient, callback) {
  switch (assetTypes[currentAssetNum]) {
    case "tweet":
      getContentFromAsset('twitter', assetTypes[currentAssetNum], assetTypes, filterTypes, filterValue, context, limit, currentAssetNum, currentFilterNum, resultObj, databaseClient, callback);
      break;
    case "instagram post":
      getContentFromAsset('instagram', assetTypes[currentAssetNum], assetTypes, filterTypes, filterValue, context, limit, currentAssetNum, currentFilterNum, resultObj, databaseClient, callback);
      break;
    case "youtube video":
      getContentFromAsset('youtube', assetTypes[currentAssetNum], assetTypes, filterTypes, filterValue, context, limit, currentAssetNum, currentFilterNum, resultObj, databaseClient, callback);
      break;
    case "all":
      getContentFromAsset('all', assetTypes[currentAssetNum], assetTypes, filterTypes, filterValue, context, limit, currentAssetNum, currentFilterNum, resultObj, databaseClient, callback);
      break;
    default:
      callback("The cloud component failed to provide any content");
  }
};
//Gets content from the specified influencers from a specific social media platform from our database.
var getContentFromInfluencersFromPlatform = function (userID, influencerAccounts, currentInfluencer, resultObj, databaseClient, platform, callback) {
  dbFunctions.getContentFromInfluencer(platform, influencerAccounts[currentInfluencer]['influencerid'], 5, userID, databaseClient, (response) => {
    if (response != undefined) {
      for (var k = 0; k < response.length; k++) {
        resultObj.push(response[k]);
      }
    }
    if (currentInfluencer != (influencerAccounts.length - 1)) {
      getContentFromInfluencersFromPlatform(userID, influencerAccounts, currentInfluencer + 1, resultObj, databaseClient, platform, callback);
    }
    else {
      callback(resultObj);
    }
  });
};

//Stores content into our database.
var storeContent = function(assetType, posts, postNum, databaseClient, callback) {
  var regex = /'/gi;
  var jsonContent = JSON.stringify(posts[postNum]).replace(regex, "''");
  var platform = posts[postNum].platform.toLowerCase();
  switch(assetType) {
    case 'tweet':
      var unixtime = new Date(posts[postNum].tweet_created_at).getTime();
      var userTextContent = posts[postNum].tweet_text.replace(regex, "''");
      insertContentToDB(assetType, posts, postNum, posts[postNum].influencerID, posts[postNum].tweet_favorite_count, platform, userTextContent, unixtime, posts[postNum].tweet_id, posts[postNum].tweet_url, jsonContent, databaseClient, callback);
      break;
    case 'instagram post':
      var userTextContent = posts[postNum].postText.replace(regex, "''");
      var datePosted = Date.parse(posts[postNum].postCreatedAt);
      insertContentToDB(assetType, posts, postNum, posts[postNum].userId, posts[postNum].postLikeCount, platform, userTextContent, datePosted, posts[postNum].postId, posts[postNum].postUrl, jsonContent, databaseClient, callback);
      break;
    case 'youtube video':
      var splitedDate = posts[postNum].video_created_at.split(" ");
      var unixtime = new Date(splitedDate).getTime();
      var userTextContent = posts[postNum].video_title.replace(regex, "''");
      insertContentToDB(assetType, posts, postNum, posts[postNum].influencerID, posts[postNum].video_like_count, platform, userTextContent, unixtime, posts[postNum].video_id, posts[postNum].video_embeded_url, jsonContent, databaseClient, callback);
      break;
  }
};
//Just a continuation of storeContent, the actual insertion.
var insertContentToDB = function(assetType, posts, postNum, influencerID, likeCount, platform, userTextContent, unixTime, postID, url, jsonContent, databaseClient, callback) {
  dbFunctions.insertPost(influencerID, likeCount, platform, userTextContent, unixTime, postID, url, jsonContent, databaseClient, (response) => {
    if (postNum != posts.length - 1) {
      storeContent(assetType, posts, postNum + 1, databaseClient, callback);
    }
    else {
      callback(response);
    }
  });
};
//Gets content from a specific influencer from a social media API.
var getContentFromInfluencerFromAPI = function(assetType, influencers, currentInfluencer, resultObj, limit, callback) {
  switch(assetType) {
    case 'tweet':
      var Twitter = require("machinepack-twitternodemachines");
      Twitter.getUserTweets({
        consumerKey: process.env.TWITTER_CONSUMER_KEY,
        consumerSecret: process.env.TWITTER_CONSUMER_SECRET,
        accessToken: process.env.TWITTER_ACCESS_TOKEN,
        accessSecret: process.env.TWITTER_ACCESS_SECRET,
        bearerToken: process.env.TWITTER_BEARER_TOKEN,
        userScreenName: influencers[currentInfluencer].platformname,
        count: limit
      }).exec((err, result) => {
        contentCallback('tweet', err, result, influencers, currentInfluencer, resultObj, limit, callback);
      });
      break;
    case 'instagram post':
      var Instagram = require("machinepack-instagramnodemachines2");
      Instagram.getInstaPosts({
        accessToken: process.env.INSTAGRAM_ACCESS_TOKEN,
        accessId: process.env.INSTAGRAM_ID,
        screenName: influencers[currentInfluencer].platformname,
        postCount: limit
      }).exec((err, result) => {
        contentCallback('instagram post', err, result, influencers, currentInfluencer, resultObj, limit, callback);
      });
      break;
    case 'youtube video':
      var YoutubeNodeMachine = require("machinepack-youtubenodemachines");
      require("dotenv").load();
      YoutubeNodeMachine.getChannelYoutubeVideos({
        googleEmail: process.env.GOOGLE_CLIENT_EMAIL,
        googlePrivateKey: process.env.GOOGLE_PRIVATE_KEY,
        channelName: influencers[currentInfluencer].platformname,
        count: limit
      }).exec((err, result) => {
        contentCallback('youtube video', err, result, influencers, currentInfluencer, resultObj, limit, callback);
      });
      break;
  }
};

var contentCallback = function(assetType, err, result, influencers, currentInfluencer, resultObj, limit, callback) {
  if (err) {
    console.log("Error at getContentFromInfluencerFromAPI");
    console.log(err);
  } else {
    if (result != undefined) {
      for (var k = 0; k < result.length; k++) {
        result[k].influencerID = influencers[currentInfluencer].influencerid
        resultObj.push(result[k]);
      }
    }
    if (currentInfluencer != (influencers.length - 1)) {
      getContentFromInfluencerFromAPI(assetType, influencers, currentInfluencer + 1, resultObj, limit, callback);
    }
    else {
      callback(resultObj);
    }
  }
};
