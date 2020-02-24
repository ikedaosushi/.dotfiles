"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
/**
 * A fuzzy search algorithm for strings that returns whether or not a match was
 * found.
 *
 * @author moranje
 * @since  2017-06-16
 * @param  {string}   needle   The characters to match.
 * @param  {string}   haystack The string to match to.
 * @return {Boolean}
 */
function fuzzysearch(needle, haystack) {
  if (needle.length > haystack.length) {
    return false;
  }
  if (needle.length === haystack.length) {
    return needle === haystack;
  }
  outer: for (var i = 0, j = 0; i < needle.length; i++) {
    var needleChar = needle.charCodeAt(i);
    while (j < haystack.length) {
      if (haystack.charCodeAt(j++) === needleChar) {
        continue outer;
      }
    }
    return false;
  }
  return true;
}
exports.fuzzysearch = fuzzysearch;
