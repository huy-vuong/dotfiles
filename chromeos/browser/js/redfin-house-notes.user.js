// ==UserScript==
// @name         Redfin Notes Generator
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Generate Markdown note title and content in console.
// @author       huy-vuong
// @match        https://www.redfin.com/*
// @icon         data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==
// @grant        none
// ==/UserScript==

(function () {
  const addressLine1 = document.querySelector(".street-address").textContent;
  const addressLine2 = document.querySelector(".dp-subtext").textContent;

  const streetAddress = addressLine1.replace(/,/g, "");
  const city = addressLine2.split(",")[0];

  const filename = streetAddress.toLowerCase().replace(/ /g, "-") + ".md";
  const cityTag = city.toLowerCase().replace(/ /g, "-");

  const frontMatter = `---\ntags: [houses/${cityTag}]\n---`;
  const header = `# ${addressLine1} ${addressLine2}`;
  const url = String(window.location);
  const notesHeader = "# Notes";

  const content = [frontMatter, header, url, notesHeader].join("\n\n");

  // Redfin has replaced console.log() calls with a call to `r()`, which seems
  // to do nothing?
  console.info(filename);
  console.info(content);
})();
