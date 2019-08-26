module.exports = {
  defaultBrowser: "Safari",
  options: {
    hideIcon: true
  },
  handlers: [{
    match: finicky.matchDomains(["meet.google.com", "fitwell.atlassian.net"]),
    browser: "Firefox"
  }, {
    match: /fitwell.io/,
    browser: "Firefox"
  }]
};
