(() => {
  const items = [
    ...document.querySelectorAll('tr[ng-repeat-start="item in items"]'),
  ].map((row) => {
    const [listing, unitCount, price] = row.textContent.trim().split("   ");
    return {
      unitCount: Number(unitCount).toFixed(3),
      unitPrice: (
        Number(price.replaceAll("$", "")) / Number(unitCount)
      ).toFixed(2),
      listing,
    };
  });

  const [store, dateTime, itemCount, total] = [
    ...document.querySelectorAll(".data"),
  ].map((node) => node.textContent);

  const storeNumber = store
    .split(" ")
    .at(-1)
    .replaceAll(/[^\d.-]/g, "");

  const monthToNumber = {
    Jan: "01",
    Feb: "02",
    Mar: "03",
    Apr: "04",
    May: "05",
    Jun: "06",
    Jul: "07",
    Aug: "08",
    Sep: "09",
    Oct: "10",
    Nov: "11",
    Dec: "12",
  };

  const dateTokens = dateTime.split(" ").slice(0, 3);
  const month = monthToNumber[dateTokens[0]];
  const dayWithoutPadding = dateTokens[1].replaceAll(/[^\d.-]/g, "");
  const day =
    dayWithoutPadding < 10
      ? `0${dayWithoutPadding}`
      : String(dayWithoutPadding);
  const year = dateTokens[2];

  const timeString = dateTime.split(" ")[4];
  const hourMinuteString = timeString.substring(0, timeString.length - 2);
  const pmOffset = timeString[timeString.length - 2] === "p" ? 12 : 0;
  const hourWithoutPadding = Number(hourMinuteString.split(":")[0]) + pmOffset;
  const hour =
    hourWithoutPadding < 10
      ? `0${hourWithoutPadding}`
      : String(hourWithoutPadding);
  const minute = hourMinuteString.split(":")[1];

  const time = `${year}-${month}-${day}T${hour}:${minute}:00`;

  const lines = items.map(({ unitCount, unitPrice, listing }) =>
    [
      time,
      "",
      unitCount,
      unitPrice,
      listing,
      "",
      "",
      "Sprouts Farmers Market",
      storeNumber,
    ].join(",")
  );

  console.log(lines.join("\n"));
})();
