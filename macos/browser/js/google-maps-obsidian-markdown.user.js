// ==UserScript==
// @name         Google Maps Obsidian Markdown
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Convert Google Maps pages to a line of Markdown for Obsidian
// @author       huy-vuong
// @match        https://www.google.com/maps/place/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=google.com
// @grant        none
// ==/UserScript==

const outputs = new Set();

setInterval(() => {
  const shareModalHeader = [
    ...document.querySelectorAll("h1.fontHeadlineLarge"),
  ].find((h1) => h1.textContent === "Share");
  if (!shareModalHeader) {
    return;
  }

  // Short URL
  const copyLinkButton = document.querySelector(
    'button[jsaction="pane.copyLink.copy"]'
  );
  if (!copyLinkButton) {
    return;
  }
  const shortUrl = copyLinkButton.previousSibling.value;

  // Address
  const address =
    shareModalHeader.parentNode.nextSibling.nextSibling.children[1].children[1]
      .textContent;

  // Coordinates
  const coordinateString = new URL(window.location).pathname.split("!3d")[1];
  const [latitude, longitudeWithTail] = coordinateString.split("!4d");
  const [longitude] = longitudeWithTail.split("!");

  // Output
  const output = `[📍](geo:${latitude},${longitude}) [${address}](${shortUrl})`;

  // Modal
  const shareableContent = copyLinkButton.parentElement.parentElement;
  if (shareableContent.children.length < 3) {
    console.log(output);
    shareableContent.appendChild(shareableContent.children[0].cloneNode());
    shareableContent.children[2].innerText = output;
  }
}, 1000);
