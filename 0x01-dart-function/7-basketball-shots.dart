int whoWins(Map<String, int> team1, Map<String, int> team2) {
  int team1Score = (team1['Free throws'] ?? 0) +
      ((team1['2 pointers'] ?? 0) * 2) +
      ((team1['3 pointers'] ?? 0) * 2);
  int team2Score = (team2['Free throws'] ?? 0) +
      ((team2['2 pointers'] ?? 0) * 2) +
      ((team2['3 pointers'] ?? 0) * 3);
  if (team1Score == team2Score) {
    return 0;
  }
  return team1Score > team2Score ? 1 : 2;
}
