int searchUsingNames(String name) {
  switch (name) {
    case 'hawaks' || 'atlanta hawaks':
      return 1;
    case 'celtics' || 'boston celtics':
      return 2;
    case 'nets' || 'brooklyn nets':
      return 3;
    case 'hornets' || 'charlotte hornets':
      return 4;
    case 'chicago bulls' || 'bulls':
      return 5;
    case 'cleveland cavaliers' || 'cavaliers':
      return 6;
    case 'dallas mavericks' || 'mavericks':
      return 7;
    case 'denver nuggets' || 'nuggets':
      return 8;
    case 'detroit pistons' || 'pistons':
      return 9;
    case 'golden state warriors' || 'warriors':
      return 10;
    case 'houston rockets' || 'rockets':
      return 11;
    case 'indiana pacers' || 'pacers':
      return 12;
    case 'la clippers' || 'clippers':
      return 13;
    case 'los angeles lakers' || 'lakers':
      return 14;
    case 'memphis grizzlies' || 'grizzlies':
      return 15;
    case 'miami heat' || 'heat':
      return 16;
    case 'milwaukee bucks' || 'bucks':
      return 17;
    case 'minnesota timberwolves' || 'timberwolves':
      return 18;
    case 'new orleans pelicans' || 'pelicans':
      return 19;
    case 'new york knicks' || 'knicks':
      return 20;
    case 'oklahoma city thunder' || 'thunder':
      return 21;
    case 'orlando magic' || 'magic':
      return 22;
    case 'philadelphia 76ers' || '76ers':
      return 23;
    case 'phoenix suns' || 'suns':
      return 24;
    case 'portland trail blazers' || 'blazers':
      return 25;
    case 'sacramento kings' || 'kings':
      return 26;
    case 'san antonio spurs' || 'spurs':
      return 27;
    case 'toronto raptors' || 'raptors':
      return 28;
    case 'utah jazz' || 'jazz':
      return 29;
    case 'washington wizards' || 'wizards':
      return 30;
    default:
      return 6;
  }
}
