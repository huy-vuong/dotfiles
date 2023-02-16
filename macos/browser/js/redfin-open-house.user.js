// ==UserScript==
// @name         Redfin Open House Lines
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Prints out Markdown-formatted line summarizing Open House metadata.
// @author       huy-vuong
// @match        https://www.redfin.com/CA/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=redfin.com
// @grant        none
// ==/UserScript==

(function () {
  "use strict";
  const openHouse = document
    .querySelector(".Pill--open-house")
    .textContent.split(" ")
    .slice(2)
    .join(" ")
    .replace(" TO ", "--");
  const yearBuilt = [...document.querySelectorAll(".keyDetail")].find((node) =>
    node.textContent.includes("Year Built")
  ).children[1].textContent;
  const priceInThousands = [...document.querySelectorAll(".statsValue")]
    .map((n) => n.textContent)[0]
    .replace(/,/g, "")
    .substring(1, 4);
  const squareFootage = [...document.querySelectorAll(".statsValue")]
    .map((n) => n.textContent)[3]
    .replace(/,/g, "");
  const pricePerSquareFoot = [...document.querySelectorAll(".keyDetail")].find(
    (node) => node.textContent.includes("Price/Sq.Ft.")
  ).children[1].textContent;
  console.log(
    `\`${openHouse} | ${yearBuilt} | $${priceInThousands}k | ${squareFootage}ft | ${pricePerSquareFoot}/ft\` ${window.location}`
  );
})();
