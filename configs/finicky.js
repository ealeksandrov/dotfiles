module.exports = {
  defaultBrowser: "Safari",
  options: {
    hideIcon: true
  },
  handlers: [{
    match: [
        "wp.me/*",
        "wordpress.com/*",
        "*.wordpress.com/*",
        "*.automattic.com/*",
        "*.a8c.com/*",
        "a8c.slack.com/*",
        "*.zendesk.com/*",
        /woocommerce/,
        /wordpress-mobile/
    ],
    browser: "Firefox"
  }]
};
