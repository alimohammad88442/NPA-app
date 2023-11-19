class TeamsModel {
  final String city;
  final int id;
  final String fullName;
  final String name;
  final String abbreviation;
  final String conference;
  final String division;

  TeamsModel({
    required this.city,
    required this.id,
    required this.fullName,
    required this.name,
    required this.abbreviation,
    required this.conference,
    required this.division,
  });
  factory TeamsModel.fromjson(jsonData) {
    return TeamsModel(
      city: jsonData['city'],
      id: jsonData['id'],
      fullName: jsonData['full_name'],
      name: jsonData['name'],
      abbreviation: jsonData['abbreviation'],
      conference: jsonData['conference'],
      division: jsonData['division'],
    );
  }
  
}


