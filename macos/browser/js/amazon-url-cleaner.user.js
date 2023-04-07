// ==UserScript==
// @name         Amazon URL Cleaner
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Clean Amazon URLs to items so it avoids all the trackers.
// @author       huy-vuong
// @match        https://www.amazon.com/*dp/*
// @grant        none
// ==/UserScript==

"use strict";

(() => {
  const currentUrl = String(window.location);
  const sanitizedUrl =
    currentUrl
      .split("/")
      .slice(0, currentUrl.split("/").indexOf("dp") + 2)
      .join("/") + "/";
  if (currentUrl !== sanitizedUrl) {
    window.location = sanitizedUrl;
  }
})();
