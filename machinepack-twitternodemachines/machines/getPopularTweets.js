module.exports = {
  friendlyName: "Get Popular Tweets",
  description: "Gets popular tweets from influencers",
  extendedDescription:
    "Get content from Twitter by providing API bearer token, asset type, filter type, filter value and context.",
  inputs: {
    consumerKey: {
      example: "ODUfdisauPUdufsoUSF",
      description: "Your Twitter consumer API key.",
      required: false
    },
    consumerSecret: {
      example: "ODUfdisauPUdufsoUSF",
      description: "Your Twitter consumer API secret.",
      required: false
    },
    accessToken: {
      example: "ODUfdisauPUdufsoUSF",
      description: "Your Twitter access API token.",
      required: false
    },
    accessSecret: {
      example: "ODUfdisauPUdufsoUSF",
      description: "Your Twitter access API secret.",
      required: false
    },
    bearerToken: {
      example: "ODUfdisauPUdufsoUSF",
      description: "Your Twitter Bearertoken API key.",
      required: false
    },
    userScreenNames: {
      example: ["elonmusk", "BillGates"],
      type: ["string"],
      description: "The Twitter user screen names of the persons you want tweets from",
      required: true
    },
    count: {
      example: 20,
      description:
        "The amount of recent tweets to be pulled from each influencer, these will then be sorted",
      required: false
    }
  },
  exits: {
    error: {
      description: "Unexpected error occurred."
    },
    wrongOrNoKey: {
      description: "Invalid or unprovided API key. All calls must have a key."
    },
    success: {
      description: "Returns popular tweets from influencers",
        /*example: [
        {
          platform: "Twitter",
          user_id: 850007368138018817,
          user_url: "https://twitter.com/POTUS",
          user_name: "Elon Musk",
          user_screen_name: "elonmusk",
          user_followers_count: 120,
          user_verified: true,
          user_profile_image_url: "http://pbs.twimg.com/profile_images/859982100904148992/hv5soju7_bigger.jpg",
          tweet_id: 1045,
          tweet_text: "RT @TwitterDev: 1/ Today we’re sharing our vision for the future of the Twitter API platform!nhttps://t.co/XweGngmxlP",
          tweet_url: "https://twitter.com/POTUS/status/1049292990215278593",
          tweet_favourite_count: 20,
          tweet_retweet_count: 0,
          retweet_count: 255,
          tweet_created_at: "Thu Apr 06 15:28:43 +0000 2017",
          tweet_hashtags: ["swag"],
          tweet_media: ["http://pbs.twimg.com/profile_images/859982100904148992/hv5soju7_bigger.jpg"]
        } 
      ] */
    }
  },
  fn: function(inputs, exits) {
    var util = require("util");
    var _ = require("lodash");
    //var request = require('request');
    var Twitter = require("twitter");
    var formatFunctions = require("../twitterDataFormating");
    // If no bearer token was provided, then `consumerKey`, `consumerSecret`,
    // `accessToken`, and `accessSecret` must ALL be provided.
    if (
      _.isUndefined(inputs.bearerToken) &&
      (_.isUndefined(inputs.consumerKey) ||
        _.isUndefined(inputs.consumerSecret) ||
        _.isUndefined(inputs.accessToken) ||
        _.isUndefined(inputs.accessSecret))
    ) {
      return exits.error(
        new Error(
          "Usage error: If `bearerToken` was not provided, then `consumerKey`, `consumerSecret`, `accessToken`, and `accessSecret` must ALL be provided."
        )
      );
    }
    var client = new Twitter({
      consumer_key: inputs.consumerKey,
      consumer_secret: inputs.consumerSecret,
      access_token_key: inputs.accessToken,
      access_token_secret: inputs.accessSecret,
      bearer_token: inputs.bearerToken
    });

    formatFunctions.getTweetsFromUsers(
      inputs.userScreenNames,
      inputs.count,
      client,
      result => {
        return exits.success(formatFunctions.popularTweetsLoaded(result));
      }
    );
  }
};
