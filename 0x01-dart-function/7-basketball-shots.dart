num getPoints(Map team) {
  num points = 0;
  team.forEach((key, value) {
    if (key == 'Free throws') {
      points += value;
    } else if (key == '2 pointers') {
      points += value * 2;
    } else if (key == '3 pointers') {
      points += value * 3;
    }
  });
  return points;
}

num whoWins(Map teamA, Map teamB) {
  // get the points of each team
  num teamAPoints = getPoints(teamA);
  num teamBPoints = getPoints(teamB);
  // compare the points
  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}