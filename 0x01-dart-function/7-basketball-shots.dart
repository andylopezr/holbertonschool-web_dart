int whoWins(Map<String, int> team1, Map<String, int> team2) {
  // ! is null check in case shape of map is not correct
  // Would have preferred loop with value multiplied by key + 1 but no time currently
  var team1Total = team1['Free throws']! +
      team1['2 pointers']! * 2 +
      team1['3 pointers']! * 3;
  var team2Total = team2['Free throws']! +
      team2['2 pointers']! * 2 +
      team2['3 pointers']! * 3;
  if (team1Total > team2Total) return 1;
  if (team1Total < team2Total) return 2;
  return 0;
}
