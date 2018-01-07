export default {
  // Source: https://stackoverflow.com/a/20442069
  toSentenceCase: function toSentenceCase (str) {
    return str.replace(/.+?[.?!](\s|$)/g, function (txt) {
      return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase()
    })
  }
}
