module.exports = {
    friendlyName: 'Get User Tweets',
    description: 'Gets tweets from a user',
    extendedDescription: 'Get content from Twitter by providing API bearer token, asset type, filter type, filter value and context.',
    inputs: {
      consumerKey: {
        example: 'ODUfdisauPUdufsoUSF',
        description: 'Your Twitter consumer API key.',
        required: false
      },
      consumerSecret: {
        example: 'ODUfdisauPUdufsoUSF',
        description: 'Your Twitter consumer API secret.',
        required: false
      },
      accessToken: {
        example: 'ODUfdisauPUdufsoUSF',
        description: 'Your Twitter access API token.',
        required: false
      },
      accessSecret: {
        example: 'ODUfdisauPUdufsoUSF',
        description: 'Your Twitter access API secret.',
        required: false
      },
      bearerToken: {
        example: 'ODUfdisauPUdufsoUSF',
        description: 'Your Twitter Bearertoken API key.',
        required: false
      },
      screenName: {
        example: 'elon_musk',
        description: 'The Twitter username of person you want tweets from',
        required: true
      },
      count: {
        example: 20,
        description: 'The maximum amount of tweets you want',
        required: false
      }
    },
    defaultExit: 'success',
    exits: { 
      error: {
            description: 'Unexpected error occurred.'
      },
      wrongOrNoKey: {
            description: 'Invalid or unprovided API key. All calls must have a key.'
      },
      success: {
            description: 'Returns tweets from User',
            example: [
              {
                'user_id': 850007368138018817,
                'name': "Elon Musk",
                'screen_name': 'elonmusk',
                'text': "RT @TwitterDev: 1/ Today we’re sharing our vision for the future of the Twitter API platform!nhttps://t.co/XweGngmxlP",
                'favorite_count': 0,
                'retweet_count': 255,
                'created_at': "Thu Apr 06 15:28:43 +0000 2017",
                'hashtags': ['swag'],
                'profile_image_url': "http://pbs.twimg.com/profile_images/822547732376207360/5g0FC8XX_bigger.jpg",
                'platform': 'Twitter',
                'media': []
              }
            ]
      } 
    },
    fn: function (inputs,exits) {
        var util = require('util');
        var _ = require('lodash');
        var request = require('request');
        var Twitter = require("twitter");
        var formatFunctions = require("../twitterDataFormating");
        // If no bearer token was provided, then `consumerKey`, `consumerSecret`,
        // `accessToken`, and `accessSecret` must ALL be provided.
        if(_.isUndefined(inputs.bearerToken) &&
        ( _.isUndefined(inputs.consumerKey) ||
        _.isUndefined(inputs.consumerSecret) ||
        _.isUndefined(inputs.accessToken) ||
        _.isUndefined(inputs.accessSecret))) {
            return exits.error(new Error('Usage error: If `bearerToken` was not provided, then `consumerKey`, `consumerSecret`, `accessToken`, and `accessSecret` must ALL be provided.'));
        }
        var client = new Twitter({
            consumer_key: inputs.consumerKey,
            consumer_secret: inputs.consumerSecret,
            access_token_key: inputs.accessToken,
            access_token_secret: inputs.accessSecret,
            bearer_token: inputs.bearerToken
        });
        formatFunctions.getTweetsFromUser(inputs.screenName, inputs.count, client, (result) => {
            return exits.success(result);
        });
    },
  };