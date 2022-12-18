// Run this on the Google Doodle page for "Doodle Champion Island Games Begin!".
// https://www.google.com/doodles/doodle-champion-island-games-begin

console.log(
  JSON.stringify(
    Object.entries(localStorage)
      .filter(([key]) => key.startsWith("KITSUNE"))
      .reduce((acc, [key, value]) => Object.assign(acc, { [key]: value }), {}),
    null,
    2
  )
);
