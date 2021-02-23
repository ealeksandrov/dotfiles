module.exports = {
  defaultBrowser: "Safari",
  options: {
    hideIcon: true
  },
  handlers: [{
    match: [
        "*.wordpress.com/*",
        "*.automattic.com/*",
        "*.a8c.com/*",
        /woocommerce/
    ],
    browser: "Firefox"
  }]
};
