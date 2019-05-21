const safari = 'Safari';
const chrome = 'Google Chrome';

const personalBrowser = safari;
const workBrowser = chrome;

// Note: finicky.log() is useful for debugging

// Always open links from Slack in work browser
const slackIdentifier = 'com.tinyspeck.slackmacgap'
const slackHandler = {
  match: ({ sourceBundleIdentifier }) => sourceBundleIdentifier === slackIdentifier,
  browser: workBrowser
};

const workUrls = [
  /^https?:\/\/github\.com\/freckle/,
  /^https?:\/\/frontrow\.atlassian\.net/,
  /^https?:\/\/email\.circleci\.com/,
  /^https?:\/\/circleci\.com\/gh\/freckle/,
  /^https?:\/\/.*.bugsnag\.com/
];

// Freckle-related links in work browser
const workUrlsHandler = {
  match: workUrls,
  browser: workBrowser
};

module.exports = {
  defaultBrowser: personalBrowser,
  options: {
    hideIcon: false
  },
  handlers: [slackHandler, workUrlsHandler]
};
