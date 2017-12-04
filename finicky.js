// Finicky config (~/.finicky.js)
// github/stackptr

const safari = 'com.apple.safari';
const chrome = 'com.google.Chrome';

const personalBrowser = safari;
const workBrowser = [chrome, safari]; // Always fallback to personal browser


// Default
finicky.setDefaultBrowser(personalBrowser)

// Note: finicky.log() is useful for debugging

// Always open links from Slack in work browser
finicky.onUrl(function(url, opts) {
  const sourceApplication = opts && opts.sourceBundleIdentifier
  if (sourceApplication === 'com.tinyspeck.slackmacgap') {
    return {
      bundleIdentifier: workBrowser
    }
  }
});

const workUrls = [
  /^https?:\/\/github\.com\/frontrowed/,
  /^https?:\/\/frontrow\.atlassian\.net/
];

// Frontrow Github links in work browser
finicky.onUrl(function(url, opts) {
  if (workUrls.some(regex => regex.test(url))) {
	  return {
      bundleIdentifier: workBrowser
    }
  }
});
