module.exports = {
  defaultBrowser: "Safari",
  options: {
    hideIcon: true
  },
  handlers: [{
    match: [
        //
        "slack.com/*"
    ],
    browser: "Firefox"
  }]
};
